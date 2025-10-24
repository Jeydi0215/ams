<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Inventory</title>
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; }
        #product-container { 
            display: grid; 
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr)); 
            gap: 20px; 
            margin-top: 20px;
        }
        .product-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
            cursor: pointer;
            transition: transform 0.2s;
        }
        .product-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.5);
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }
        .modal-content {
            background: #fff;
            padding: 20px;
            max-width: 500px;
            width: 90%;
            position: relative;
            border-radius: 10px;
            max-height: 90vh;
            overflow-y: auto;
        }
        .close-modal {
            position: absolute;
            top: 10px;
            right: 15px;
            cursor: pointer;
            font-size: 24px;
            font-weight: bold;
            color: #666;
        }
        .close-modal:hover {
            color: #000;
        }
    </style>
</head>
<body>
    <h1>Inventory Management</h1>
    
    <div id="loading" style="padding: 20px; text-align: center;">
        <p>Loading products...</p>
    </div>

    <div id="product-container"></div>

    <!-- Product Modal -->
    <div id="productModal" class="modal">
        <div class="modal-content">
            <span class="close-modal" onclick="closeProductModal()">&times;</span>
            <h2 id="modalTitle"></h2>
            <img id="modalImage" src="" style="width:100%; height:auto; margin-bottom:10px;">
            <p id="modalDescription"></p>
            <div><strong>Category:</strong> <span id="modalCategory"></span></div>
            <div><strong>Location:</strong> <span id="modalLocation"></span></div>
            <div><strong>Department:</strong> <span id="modalDepartment"></span></div>
            <div><strong>Type:</strong> <span id="modalType"></span></div>
            <div><strong>Status:</strong> <span id="modalStatus"></span></div>
            <div><strong>Cost:</strong> <span id="modalCost"></span></div>
            <div><strong>Price:</strong> <span id="modalPrice"></span></div>
            <div><strong>Quantity:</strong> <span id="modalQty"></span></div>
            <div id="qrcode" style="margin-top:10px;"></div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>
    
    <script>
        console.log('Script loaded');
        
        let allProducts = [];
        
        function closeProductModal() {
            document.getElementById('productModal').style.display = 'none';
        }

        function fetchProducts() {
            console.log('Fetching products...');
            document.getElementById('loading').style.display = 'block';
            
            fetch('/inventory/products')
                .then(res => {
                    console.log('Response status:', res.status);
                    if (!res.ok) throw new Error('HTTP ' + res.status);
                    return res.json();
                })
                .then(products => {
                    console.log('Products received:', products);
                    document.getElementById('loading').style.display = 'none';
                    allProducts = products;
                    displayProducts(products);
                })
                .catch(err => {
                    console.error('Error:', err);
                    document.getElementById('loading').innerHTML = 
                        '<p style="color:red;">Error loading products: ' + err.message + '</p>';
                });
        }

        function displayProducts(products) {
            const container = document.getElementById('product-container');
            
            if (products.length === 0) {
                container.innerHTML = '<p>No products found.</p>';
                return;
            }
            
            console.log('Displaying', products.length, 'products');
            container.innerHTML = '';

            products.forEach(p => {
                const card = document.createElement('div');
                card.className = 'product-card';
                card.innerHTML = `
                    <img src="${p.media_url || 'https://via.placeholder.com/280x160'}" 
                         alt="${p.title}" 
                         style="width:100%; height:160px; object-fit:cover;">
                    <div style="padding:12px 15px;">
                        <div style="background:#d4f4dd;color:#2b8a3e;text-align:center;font-weight:600;padding:4px 0;border-radius:6px;margin-bottom:8px;">
                            ${p.status || 'N/A'}
                        </div>
                        <strong>${p.title}</strong>
                        <div>₱${parseFloat(p.price || 0).toFixed(2)}</div>
                        <p style="font-size:14px;color:#666;margin:8px 0;">
                            ${(p.description || 'No description').substring(0, 100)}...
                        </p>
                    </div>
                `;
                
                card.addEventListener('click', () => showProductModal(p));
                container.appendChild(card);
            });
        }

        function showProductModal(p) {
            console.log('Opening modal for:', p.title);
            
            document.getElementById('modalTitle').textContent = p.title;
            document.getElementById('modalImage').src = p.media_url || 'https://via.placeholder.com/300';
            document.getElementById('modalDescription').textContent = p.description || 'No description';
            document.getElementById('modalCategory').textContent = p.category || 'N/A';
            document.getElementById('modalLocation').textContent = p.location || 'N/A';
            document.getElementById('modalDepartment').textContent = p.department || 'N/A';
            document.getElementById('modalType').textContent = p.type || 'N/A';
            document.getElementById('modalStatus').textContent = p.status || 'N/A';
            document.getElementById('modalCost').textContent = '₱' + parseFloat(p.cost || 0).toFixed(2);
            document.getElementById('modalPrice').textContent = '₱' + parseFloat(p.price || 0).toFixed(2);
            document.getElementById('modalQty').textContent = p.qty || 0;

            const qr = document.getElementById('qrcode');
            qr.innerHTML = '';
            if (typeof QRCode !== 'undefined') {
                new QRCode(qr, {
                    text: 'Item ID: ' + p.item_id,
                    width: 128,
                    height: 128
                });
            }
            
            document.getElementById('productModal').style.display = 'flex';
        }

        // Initialize
        document.addEventListener('DOMContentLoaded', function() {
            console.log('Page loaded, fetching products...');
            fetchProducts();
        });
    </script>
</body>
</html>