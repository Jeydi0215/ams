/* ------------------ GLOBAL CONFIG ------------------ */
let selectedProducts = [];
let allProducts = [];
let selectedForPrint = new Set();
let currentFilters = {
    status: 'In Use',
    category: '',
    type: '',
    asset_group: '',
    search: '',
    sort: 'newest'
};

// Laravel routes - FIXED TO MATCH web.php
const routes = {
    getProducts: '/inventory/products',
    addProduct: '/admin/inventory/add-product',
    editProduct: '/admin/inventory/edit-product',
    getCategories: '/admin/inventory/categories',
    getLocations: '/admin/inventory/locations',
    getDepartments: '/admin/inventory/departments',
    logout: '/logout'
};

const csrfToken = document.querySelector('meta[name="csrf-token"]')?.getAttribute('content') || '';

/* ------------------ MODAL HANDLERS ------------------ */
function showModal(modalId) { document.getElementById(modalId)?.style.display = 'block'; }
function closeModal() { document.querySelectorAll('.modal').forEach(m => m.style.display = 'none'); }
function closeProductModal() { document.getElementById('productModal')?.style.display = 'none'; }

/* ------------------ PRODUCT SELECTION ------------------ */
function toggleProductSelection(productId) {
    if (selectedForPrint.has(productId)) selectedForPrint.delete(productId);
    else selectedForPrint.add(productId);
    updatePrintButton();
}
function updatePrintButton() {
    const printBtn = document.getElementById('printSelectedBtn');
    const selectedCount = document.getElementById('selectedCount');
    if (printBtn) printBtn.disabled = selectedForPrint.size === 0;
    if (selectedCount) selectedCount.textContent = selectedForPrint.size;
}

/* ------------------ PRINT QR CODES ------------------ */
function printSelectedQRCodes() {
    if (selectedForPrint.size === 0) return alert('Please select at least one product to print QR codes.');
    const selected = Array.from(selectedForPrint);
    const printWindow = window.open('', '_blank');
    let html = `
    <!DOCTYPE html><html><head><title>Print QR Codes</title>
    <style>
    body { font-family: Arial; margin: 20px; text-align: center; }
    .qr-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; margin: 20px 0; }
    .qr-item { border: 1px solid #ddd; padding: 15px; border-radius: 8px; page-break-inside: avoid; }
    .qr-title { font-weight: bold; margin-bottom: 10px; font-size: 14px; }
    .qr-asset-id { font-size: 12px; margin-bottom: 10px; color: #666; }
    @media print { .no-print { display: none; } }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"><\/script>
    </head><body><h2>Asset QR Codes</h2><div class="qr-grid">`;

    selected.forEach(id => {
        const p = allProducts.find(x => x.item_id == id);
        if (p) {
            html += `<div class="qr-item">
                <div class="qr-title">${p.title}</div>
                <div class="qr-asset-id">Asset ID: ${p.asset_id || p.item_id}</div>
                <div class="qr-code" id="qr-${id}"></div>
            </div>`;
        }
    });

    html += `</div><div class="no-print" style="margin-top:20px;">
        <button onclick="window.print()">Print</button>
        <button onclick="window.close()">Close</button>
    </div>
    <script>
    window.onload = function() {
        ${selected.map(id => {
            const p = allProducts.find(x => x.item_id == id);
            if (!p) return '';
            const qrText = `Asset ID: ${p.asset_id || p.item_id}\\nProduct: ${p.title}\\nCategory: ${p.category}`;
            return `new QRCode(document.getElementById('qr-${id}'), { text: "${qrText}", width:120, height:120 });`;
        }).join('')}
    }
    <\/script></body></html>`;
    
    printWindow.document.write(html);
    printWindow.document.close();
}

/* ------------------ DEPRECIATION HELPERS ------------------ */
function updateDepreciationValues() {
    const usefulLife = document.getElementById('useful_life');
    const depreciation = document.getElementById('depreciation_rate');
    if (!usefulLife || !depreciation) return;

    usefulLife.addEventListener('input', () => {
        const val = parseFloat(usefulLife.value);
        if (val > 0) depreciation.value = (100 / val).toFixed(2);
    });
    depreciation.addEventListener('input', () => {
        const val = parseFloat(depreciation.value);
        if (val > 0) usefulLife.value = (100 / val).toFixed(2);
    });
}

/* ------------------ CREATE MODAL ------------------ */
function openCreateModal(type) {
    if (type === 'product') {
        showModal('add-item-modal');
        loadAllDropdowns();
    }
}

/* ------------------ DROPDOWNS ------------------ */
function loadDropdown(id, action, key) {
    const map = {
        get_categories: routes.getCategories,
        get_locations: routes.getLocations,
        get_departments: routes.getDepartments
    };
    
    console.log('Loading dropdown:', id, 'from', map[action]);
    
    fetch(map[action])
        .then(r => {
            if (!r.ok) throw new Error('HTTP ' + r.status);
            return r.json();
        })
        .then(data => {
            console.log('Dropdown data received:', data);
            const sel = document.getElementById(id);
            if (!sel) return console.warn('Dropdown element not found:', id);
            sel.innerHTML = '<option value="">Select</option>';
            data.forEach(it => {
                const opt = document.createElement('option');
                opt.value = it[key];
                opt.textContent = it[key];
                sel.appendChild(opt);
            });
        })
        .catch(err => console.error('Error loading ' + action, err));
}

function loadAllDropdowns() {
    loadDropdown('category', 'get_categories', 'Category');
    loadDropdown('location', 'get_locations', 'Location');
    loadDropdown('department', 'get_departments', 'Department');
    loadDropdown('edit_category', 'get_categories', 'Category');
    loadDropdown('edit_location', 'get_locations', 'Location');
    loadDropdown('edit_department', 'get_departments', 'Department');
}

/* ------------------ FETCH PRODUCTS ------------------ */
function fetchProducts() {
    console.log('Fetching products with filters:', currentFilters);
    
    fetch(routes.getProducts + '?' + new URLSearchParams(currentFilters))
        .then(res => {
            console.log('Response status:', res.status);
            if (!res.ok) {
                throw new Error('Server error ' + res.status);
            }
            return res.json();
        })
        .then(products => {
            console.log('Products fetched successfully:', products.length, 'items');
            allProducts = products;
            displayProducts(sortProducts(products, currentFilters.sort));
        })
        .catch(err => {
            console.error('Error loading products:', err);
            const container = document.getElementById('product-container');
            if (container) {
                container.innerHTML = '<p style="color:red;">Error loading products. Check console for details.</p>';
            }
        });
}

/* ------------------ SORT ------------------ */
function sortProducts(products, sortBy) {
    const copy = [...products];
    switch (sortBy) {
        case 'newest': return copy.sort((a,b) => b.item_id - a.item_id);
        case 'oldest': return copy.sort((a,b) => a.item_id - b.item_id);
        case 'low': return copy.sort((a,b) => a.price - b.price);
        case 'high': return copy.sort((a,b) => b.price - a.price);
        default: return copy;
    }
}

/* ------------------ DISPLAY PRODUCTS ------------------ */
function displayProducts(products) {
    const container = document.getElementById('product-container');
    if (!container) {
        console.error('Product container not found!');
        return;
    }
    
    if (products.length === 0) {
        container.innerHTML = '<p>No products found. Try adjusting your filters.</p>';
        return;
    }
    
    console.log('Displaying', products.length, 'products');
    container.innerHTML = '';

    products.forEach(p => {
        const card = document.createElement('div');
        card.className = 'product-card';
        card.dataset.id = p.item_id;
        card.innerHTML = `
            <div style="position: relative;">
                <div style="position: absolute; top:10px; left:10px; z-index:10;">
                    <input type="checkbox" onchange="toggleProductSelection(${p.item_id})" style="transform: scale(1.2); cursor: pointer;">
                </div>
                <img src="${p.media_url || 'https://via.placeholder.com/280x160'}" alt="${p.title}" style="width:100%; height:160px; object-fit:cover;">
            </div>
            <div style="padding:12px 15px;">
                <div style="background:#d4f4dd;color:#2b8a3e;text-align:center;font-weight:600;padding:4px 0;border-radius:6px;margin-bottom:8px;">${p.status || 'N/A'}</div>
                <strong>${p.title}</strong>
                <div>₱${parseFloat(p.price).toFixed(2)}</div>
                <p>${p.description || 'No description'}</p>
                <div>Depreciation: ${p.depreciation_rate || 0}%</div>
            </div>`;
        card.addEventListener('click', e => { if(e.target.type!=='checkbox') showProductModal(p); });
        container.appendChild(card);
    });
}

/* ------------------ PRODUCT MODAL ------------------ */
function showProductModal(p) {
    const modal = document.getElementById('productModal');
    if (!modal) return;
    document.getElementById('modalTitle').textContent = p.title;
    document.getElementById('modalImage').src = p.media_url || 'https://via.placeholder.com/300';
    document.getElementById('modalDescription').textContent = p.description || 'No description';
    document.getElementById('modalCategory').textContent = p.category || 'N/A';
    document.getElementById('modalLocation').textContent = p.location || 'N/A';
    document.getElementById('modalDepartment').textContent = p.department || 'N/A';
    document.getElementById('modalType').textContent = p.type || 'N/A';
    document.getElementById('modalStatus').textContent = p.status || 'N/A';
    document.getElementById('modalCost').textContent = `₱${parseFloat(p.cost||0).toFixed(2)}`;
    document.getElementById('modalPrice').textContent = `₱${parseFloat(p.price||0).toFixed(2)}`;
    document.getElementById('modalQty').textContent = p.qty || 0;

    const qr = document.getElementById('qrcode');
    if(qr) { qr.innerHTML=''; if(typeof QRCode!=='undefined') new QRCode(qr,{text:`inventory?item_id=${p.item_id}`,width:128,height:128}); }
    modal.style.display='block';
}

/* ------------------ INIT ------------------ */
document.addEventListener('DOMContentLoaded', () => {
    console.log('Inventory page loaded, initializing...');
    loadAllDropdowns();
    fetchProducts();
    updateDepreciationValues();
});