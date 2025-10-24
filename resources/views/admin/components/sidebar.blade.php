@php
    $full_name = $_SESSION['full_name'] ?? 'Guest';
    $image_path = $_SESSION['image_path'] ?? null;
    $user_position = $_SESSION['user_position'] ?? null;
@endphp

<div class="user-info">
    @if($image_path)
        <img src="{{ asset($image_path) }}" alt="User Image">
    @endif
    
    <h3>{{ $full_name }}</h3>
    
    @if($user_position)
        <p>{{ $user_position }}</p>
    @endif
</div>
<link rel="stylesheet" href="{{ asset('css/sidebar.css') }}">

<div class="sidebar-container">
        <div class="sidebar">
        <nav id="sidebarMenu">
            <div class="sidebarLogo">
                <img src="https://www.stafify.com/cdn/shop/files/e50lj9u5c9xat9j7z3ne_752x.png?v=1613708232" class="menu-text site-logo" alt="Stafify Logo">
                <img src="https://res.cloudinary.com/dt1vbprub/image/upload/v1741661073/Stafify_Icon_onet8q.jpg" class="site-icon" alt="Stafify Icon">
            </div>
            <!-- Add Profile Navigation Section -->
            <a href="#" class="flex gap-3 items-center card-profile">
                <div class="flex-shrink-0">
                <img src="<?= htmlspecialchars($image_path) ?>" alt="Profile Picture" class="profile-pic">
</div>
                <div class="details-profile menu-text">
                    <span class="profile-name">
                    <span id="username-display" class="profile-name">
                        <?= htmlspecialchars($full_name) ?>
                        </span>
                    </span>
                    <p class="profile-dept">
                        <span class="position-display"></span>
                        <span class="separator"> <?= htmlspecialchars($user_position)?> </span>
                        <span class="department-display"></span>
                    </p>
                </div>
            </a>
       
     <ul class="flex flex-col gap-2 sidebarMenuItems">
                <li class="sidebarMenuItem">
                    <a href="{{ route('admin.dashboard') }}" class="nav-link">

                   <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-layout-grid"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M4 4m0 1a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v4a1 1 0 0 1 -1 1h-4a1 1 0 0 1 -1 -1z" /><path d="M14 4m0 1a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v4a1 1 0 0 1 -1 1h-4a1 1 0 0 1 -1 -1z" /><path d="M4 14m0 1a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v4a1 1 0 0 1 -1 1h-4a1 1 0 0 1 -1 -1z" /><path d="M14 14m0 1a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v4a1 1 0 0 1 -1 1h-4a1 1 0 0 1 -1 -1z" /></svg>
                        <span class="menu-text">Dashboard</span>
                    </a>
                </li>

                  <ul class="flex flex-col gap-2 sidebarMenuItems">
                <li class="sidebarMenuItem">
                    <a href="{{ route('admin.inventory') }}" class="nav-link">
                    <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-basket"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M10 14a2 2 0 1 0 4 0a2 2 0 0 0 -4 0" /><path d="M5.001 8h13.999a2 2 0 0 1 1.977 2.304l-1.255 7.152a3 3 0 0 1 -2.966 2.544h-9.512a3 3 0 0 1 -2.965 -2.544l-1.255 -7.152a2 2 0 0 1 1.977 -2.304z" /><path d="M17 10l-2 -6" /><path d="M7 10l2 -6" /></svg>
                        <span class="menu-text">Asset Management</span>
                    </a>
                </li>
                     <ul class="flex flex-col gap-2 sidebarMenuItems">
                <li class="sidebarMenuItem">
                    <a href="../admin/Purchase Request/purchase_request.php" class="nav-link">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-shopping-cart-question"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M4 19a2 2 0 1 0 4 0a2 2 0 0 0 -4 0" /><path d="M13.5 17h-7.5v-14h-2" /><path d="M6 5l14 1l-.714 5m-4.786 2h-8.5" /><path d="M19 22v.01" /><path d="M19 19a2.003 2.003 0 0 0 .914 -3.782a1.98 1.98 0 0 0 -2.414 .483" /></svg>
                        <span class="menu-text">Purchase Request</span>
                    </a>
                </li>
                       <ul class="flex flex-col gap-2 sidebarMenuItems">
                <li class="sidebarMenuItem">
                    <a href="../admin/Purchase Order/purchase_order.php" class="nav-link">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-truck-delivery"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M7 17m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" /><path d="M17 17m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" /><path d="M5 17h-2v-4m-1 -8h11v12m-4 0h6m4 0h2v-6h-8m0 -5h5l3 5" /><path d="M3 9l4 0" /></svg>
                        <span class="menu-text">Purchase Order Request</span>
                    </a>
                </li>
                <ul class="flex flex-col gap-2 sidebarMenuItems">
                <li class="sidebarMenuItem">
                    <a href="../admin/Asset Assignment/asset_assignment.php" class="nav-link">
                    <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-moneybag-move"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M9.5 3h5a1.5 1.5 0 0 1 1.5 1.5a3.5 3.5 0 0 1 -3.5 3.5h-1a3.5 3.5 0 0 1 -3.5 -3.5a1.5 1.5 0 0 1 1.5 -1.5" /><path d="M12.5 21h-4.5a4 4 0 0 1 -4 -4v-1a8 8 0 0 1 14.946 -3.971" /><path d="M16 19h6" /><path d="M19 16l3 3l-3 3" /></svg>
                        <span class="menu-text">Asset Assignment</span>
                    </a>
                </li>
                       <ul class="flex flex-col gap-2 sidebarMenuItems">
                <li class="sidebarMenuItem">
                    <a href="../admin/Supplier/supplier.php" class="nav-link">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-building-store"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 21l18 0" /><path d="M3 7v1a3 3 0 0 0 6 0v-1m0 1a3 3 0 0 0 6 0v-1m0 1a3 3 0 0 0 6 0v-1h-18l2 -4h14l2 4" /><path d="M5 21l0 -10.15" /><path d="M19 21l0 -10.15" /><path d="M9 21v-4a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v4" /></svg>
                        <span class="menu-text">Supplier & Vendor</span>
                    </a>
                </li>
                <ul class="flex flex-col gap-2 sidebarMenuItems">
                <li class="sidebarMenuItem">
                    <a href="../admin/Admin Request/admin_request.php" class="nav-link">
                    <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-shopping-bag-check"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M11.5 21h-2.926a3 3 0 0 1 -2.965 -2.544l-1.255 -8.152a2 2 0 0 1 1.977 -2.304h11.339a2 2 0 0 1 1.977 2.304l-.5 3.248" /><path d="M9 11v-5a3 3 0 0 1 6 0v5" /><path d="M15 19l2 2l4 -4" /></svg>
                        <span class="menu-text">Request Approval</span>
                    </a>
                </li>
                       <ul class="flex flex-col gap-2 sidebarMenuItems">
    

   
  </ul>
</li>

<!--                 
                <li class="sidebarMenuItem">
                    <a href="chart_of_accounts.php" data-page="email-notification" class="nav-link ">
                    <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-chart-histogram"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 3v18h18" /><path d="M20 18v3" /><path d="M16 16v5" /><path d="M12 13v8" /><path d="M8 16v5" /><path d="M3 11c6 0 5 -5 9 -5s3 5 9 5" /></svg>
                    <span class="menu-text">Chart Of Accounts</span>
                    </a>
                </li> -->


                <!-- <li class="sidebarMenuItem has-dropdown">
                    <a href="#" class="justify-between nav-link" onclick="toggleDropdown(event, 'attendanceDropdown2')">
                        <span class="flex items-center">
                        <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-user-circle"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 12m-9 0a9 9 0 1 0 18 0a9 9 0 1 0 -18 0" /><path d="M12 10m-3 0a3 3 0 1 0 6 0a3 3 0 1 0 -6 0" /><path d="M6.168 18.849a4 4 0 0 1 3.832 -2.849h4a4 4 0 0 1 3.834 2.855" /></svg>
                        <span class="menu-text">Book of Accounts</span>
                        </span>
                        <svg  xmlns="http://www.w3.org/2000/svg"  width="23"  height="23"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon-tabler icons-tabler-outline icon-tabler-chevron-down">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                            <path d="M6 9l6 6l6 -6" />
                        </svg>
                    </a>
                    <ul class="dropdown attendanceDropdown2 desktop">

                    <li class="sidebarMenuItem">
                        <a href="shift-management.php" data-page="shift-management" class="nav-link ">
                        <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-mail-down"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 19h-7a2 2 0 0 1 -2 -2v-10a2 2 0 0 1 2 -2h14a2 2 0 0 1 2 2v5.5" /><path d="M19 16v6" /><path d="M22 19l-3 3l-3 -3" /><path d="M3 7l9 6l9 -6" /></svg>
                        <span class="menu-text">Inventory</span>
                        </a>
                    </li>
                    <li class="sidebarMenuItem">
                        <a href="shift-management.php" data-page="shift-management" class="nav-link ">
                        <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-mail-down"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 19h-7a2 2 0 0 1 -2 -2v-10a2 2 0 0 1 2 -2h14a2 2 0 0 1 2 2v5.5" /><path d="M19 16v6" /><path d="M22 19l-3 3l-3 -3" /><path d="M3 7l9 6l9 -6" /></svg>
                        <span class="menu-text">Sales Returns</span>
                        </a>
                    </li>

                    <li class="sidebarMenuItem">
                        <a href="bank.php" data-page="shift-management" class="nav-link ">
                        <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-mail-down"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 19h-7a2 2 0 0 1 -2 -2v-10a2 2 0 0 1 2 -2h14a2 2 0 0 1 2 2v5.5" /><path d="M19 16v6" /><path d="M22 19l-3 3l-3 -3" /><path d="M3 7l9 6l9 -6" /></svg>
                        <span class="menu-text">Accounts Receivables</span>
                        </a>
                    </li>
                    <li class="sidebarMenuItem">
                        <a href="leave-management.php" data-page="leave-management" class="nav-link ">
                        <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-calendar-user"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 21h-6a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v4.5" /><path d="M16 3v4" /><path d="M8 3v4" /><path d="M4 11h16" /><path d="M19 17m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" /><path d="M22 22a2 2 0 0 0 -2 -2h-2a2 2 0 0 0 -2 2" /></svg>
                        <span class="menu-text">Accounts Payables</span>
                        </a>
                    </li>
                    <li class="sidebarMenuItem">
                        <a href="JobOrder.php" data-page="time-tracking" class="nav-link">
                        <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-stopwatch"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M5 13a7 7 0 1 0 14 0a7 7 0 0 0 -14 0z" /><path d="M14.5 10.5l-2.5 2.5" /><path d="M17 8l1 -1" /><path d="M14 3h-4" /></svg>
                        <span class="menu-text">Cash Receipts</span>
                        </a>
                    </li>
                    <li class="sidebarMenuItem">
                        <a href="cashDisbursement.php" data-page="shift-management" class="nav-link ">
                        <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-cash"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M7 15h-3a1 1 0 0 1 -1 -1v-8a1 1 0 0 1 1 -1h12a1 1 0 0 1 1 1v3" /><path d="M7 9m0 1a1 1 0 0 1 1 -1h12a1 1 0 0 1 1 1v8a1 1 0 0 1 -1 1h-12a1 1 0 0 1 -1 -1z" /><path d="M12 14a2 2 0 1 0 4 0a2 2 0 0 0 -4 0" /></svg>
                        <span class="menu-text">Cash Disbursements</span>
                        </a>
                    </li>
                    <li class="sidebarMenuItem">
                        <a href="leave-management.php" data-page="leave-management" class="nav-link ">
                        <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-calendar-user"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 21h-6a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v4.5" /><path d="M16 3v4" /><path d="M8 3v4" /><path d="M4 11h16" /><path d="M19 17m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" /><path d="M22 22a2 2 0 0 0 -2 -2h-2a2 2 0 0 0 -2 2" /></svg>
                        <span class="menu-text">General Journal</span>
                        </a>
                    </li>
                    <li class="sidebarMenuItem">
                        <a href="leave-management.php" data-page="leave-management" class="nav-link ">
                        <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-folders"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M9 3h3l2 2h5a2 2 0 0 1 2 2v7a2 2 0 0 1 -2 2h-10a2 2 0 0 1 -2 -2v-9a2 2 0 0 1 2 -2" /><path d="M17 16v2a2 2 0 0 1 -2 2h-10a2 2 0 0 1 -2 -2v-9a2 2 0 0 1 2 -2h2" /></svg>
                        <span class="menu-text">General Ledger</span>
                        </a>
                    </li>
                    <li class="sidebarMenuItem">
                        <a href="leave-management.php" data-page="leave-management" class="nav-link ">
                        <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-report-analytics"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M9 5h-2a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-12a2 2 0 0 0 -2 -2h-2" /><path d="M9 3m0 2a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v0a2 2 0 0 1 -2 2h-2a2 2 0 0 1 -2 -2z" /><path d="M9 17v-5" /><path d="M12 17v-1" /><path d="M15 17v-3" /></svg>
                        <span class="menu-text">Sales Journal</span>
                        </a>
                    </li>
                    <li class="sidebarMenuItem">
                        <a href="leave-management.php" data-page="leave-management" class="nav-link ">
                        <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-cash-register"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M21 15h-2.5c-.398 0 -.779 .158 -1.061 .439c-.281 .281 -.439 .663 -.439 1.061c0 .398 .158 .779 .439 1.061c.281 .281 .663 .439 1.061 .439h1c.398 0 .779 .158 1.061 .439c.281 .281 .439 .663 .439 1.061c0 .398 -.158 .779 -.439 1.061c-.281 .281 -.663 .439 -1.061 .439h-2.5" /><path d="M19 21v1m0 -8v1" /><path d="M13 21h-7c-.53 0 -1.039 -.211 -1.414 -.586c-.375 -.375 -.586 -.884 -.586 -1.414v-10c0 -.53 .211 -1.039 .586 -1.414c.375 -.375 .884 -.586 1.414 -.586h2m12 3.12v-1.12c0 -.53 -.211 -1.039 -.586 -1.414c-.375 -.375 -.884 -.586 -1.414 -.586h-2" /><path d="M16 10v-6c0 -.53 -.211 -1.039 -.586 -1.414c-.375 -.375 -.884 -.586 -1.414 -.586h-4c-.53 0 -1.039 .211 -1.414 .586c-.375 .375 -.586 .884 -.586 1.414v6m8 0h-8m8 0h1m-9 0h-1" /><path d="M8 14v.01" /><path d="M8 17v.01" /><path d="M12 13.99v.01" /><path d="M12 17v.01" /></svg>
                        <span class="menu-text">Purchase Journal</span>
                        </a>
                    </li>
                    <li class="sidebarMenuItem">
                        <a href="leave-management.php" data-page="leave-management" class="nav-link ">
                        <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-settings-dollar"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M13.038 20.666c-.902 .665 -2.393 .337 -2.713 -.983a1.724 1.724 0 0 0 -2.573 -1.066c-1.543 .94 -3.31 -.826 -2.37 -2.37a1.724 1.724 0 0 0 -1.065 -2.572c-1.756 -.426 -1.756 -2.924 0 -3.35a1.724 1.724 0 0 0 1.066 -2.573c-.94 -1.543 .826 -3.31 2.37 -2.37c1 .608 2.296 .07 2.572 -1.065c.426 -1.756 2.924 -1.756 3.35 0a1.724 1.724 0 0 0 2.573 1.066c1.543 -.94 3.31 .826 2.37 2.37a1.724 1.724 0 0 0 .402 2.248" /><path d="M15 12a3 3 0 1 0 -1.724 2.716" /><path d="M21 15h-2.5a1.5 1.5 0 0 0 0 3h1a1.5 1.5 0 0 1 0 3h-2.5" /><path d="M19 21v1m0 -8v1" /></svg>
                        <span class="menu-text">Tax Settings</span>
                        </a>
                    </li>
                    </ul>
                </li> -->


              


        



                <li class="sidebarMenuItem">
                    <a href="email-notification.php" data-page="email-notification" class="nav-link ">
                    <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-mail-opened"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 9l9 6l9 -6l-9 -6l-9 6" /><path d="M21 9v10a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-10" /><path d="M3 19l6 -6" /><path d="M15 13l6 6" /></svg>
                    <span class="menu-text">Email Notification</span>
                    </a>
                </li>
                <li class="sidebarMenuItem">
                    <button class="toggle-btn" onclick="toggleSidebar()">
                    <svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="1"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-layout-sidebar-left-collapse"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M4 4m0 2a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-12a2 2 0 0 1 -2 -2z" /><path d="M9 4v16" /><path d="M15 10l-2 2l2 2" /></svg>
                    <span class="menu-text">Collapse Sidebar</span>
                    </button>
                </li>
            </ul>
            
        </nav>
        
        <div class="flex max-[1024px]:hidden flex-col items-start gap-3 poweredBy">
            <p>Powered By:</p>
            <img src="https://www.stafify.com/cdn/shop/files/e50lj9u5c9xat9j7z3ne_752x.png?v=1613708232" class="site-logo" alt="Stafify Logo">
        </div>
        </div>
    </div>
      <!-- <div class="sidebar">
        <nav id="sidebarMenu">
          <div class="sidebarMenu-inner">
            <div class="sidebarLogo">
              <img
                src="https://www.stafify.com/cdn/shop/files/e50lj9u5c9xat9j7z3ne_752x.png?v=1613708232"
                class="menu-text site-logo"
                alt="Stafify Logo"
              />
              <img
                src="https://res.cloudinary.com/dt1vbprub/image/upload/v1741661073/Stafify_Icon_onet8q.jpg"
                class="site-icon"
                alt="Stafify Icon"
              />
            </div>
            <a href="#" class="flex gap-10 items-center card-profile">
              <div class="image-profile">
                <img
                  src="https://heroshotphotography.com/wp-content/uploads/2023/03/male-linkedin-corporate-headshot-on-white-square-1024x1024.jpg"
                  alt="Profile Picture"
                  class="rounded-full w-10 h-10 object-cover"
                />
              </div>
              <div class="details-profile menu-text">
                <span class="profile-name">
                  <span class="profile-name">Dowelle Dayle Mon</span>
                </span>
                <p class="profile-dept">
                  Department <span class="separator">-</span> Position
                </p>
              </div>
            </a>
            <ul class="flex flex-col gap-5 sidebarMenuItems">
              <li class="sidebarMenuItem">
                <a
                  href="#"
                  data-page="analytics"
                  class="nav-link"
                  style="color: #333"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="1"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-chart-scatter"
                  >
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path d="M3 3v18h18" />
                    <path d="M8 15.015v.015" />
                    <path d="M16 16.015v.015" />
                    <path d="M8 7.03v.015" />
                    <path d="M12 11.03v.015" />
                    <path d="M19 11.03v.015" />
                  </svg>
                  <span class="menu-text">Analytics</span>
                </a>
              </li>
              <li class="sidebarMenuItem">
                <a
                  href="JobOrder.html"
                  data-page="index"
                  class="nav-link"
                  style="color: #333"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="1"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-briefcase-2"
                  >
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path
                      d="M3 9a2 2 0 0 1 2 -2h14a2 2 0 0 1 2 2v9a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-9z"
                    />
                    <path d="M8 7v-2a2 2 0 0 1 2 -2h4a2 2 0 0 1 2 2v2" />
                  </svg>
                  <span class="menu-text">Cash Receipts</span>
                </a>
              </li>
              <li class="sidebarMenuItem">
                <a
                  href="cashDisbursement.html"
                  data-page="cash-disbursement"
                  class="nav-link active"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="1"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-coins"
                  >
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path
                      d="M9 14c0 1.657 2.686 3 6 3s6 -1.343 6 -3s-2.686 -3 -6 -3s-6 1.343 -6 3z"
                    />
                    <path d="M9 14v4c0 1.656 2.686 3 6 3s6 -1.344 6 -3v-4" />
                    <path
                      d="M3 6c0 1.072 1.144 2.062 3 2.598s4.144 .536 6 0c1.856 -.536 3 -1.526 3 -2.598c0 -1.072 -1.144 -2.062 -3 -2.598s-4.144 -.536 -6 0c-1.856 .536 -3 1.526 -3 2.598z"
                    />
                    <path d="M3 6v10c0 .888 .772 1.45 2 2" />
                    <path d="M3 11c0 .888 .772 1.45 2 2" />
                  </svg>
                  <span class="menu-text">Cash Disbursement</span>
                </a>
              </li>
              <li class="sidebarMenuItem">
                <a
                  href="Inventory.php"
                  data-page="inventory"
                  class="nav-link"
                  style="color: #333"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="1"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-building-warehouse"
                  >
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path d="M3 21v-13l9 -4l9 4v13" />
                    <path d="M13 13h4v8h-10v-6h6" />
                    <path d="M13 21v-9a1 1 0 0 0 -1 -1h-2a1 1 0 0 0 -1 1v3" />
                  </svg>
                  <span class="menu-text">Inventory</span>
                </a>
              </li>
              <li class="sidebarMenuItem">
                <a
                  href="#"
                  data-page="templates"
                  class="nav-link"
                  style="color: #333"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="1"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-template"
                  >
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path
                      d="M4 4m0 1a1 1 0 0 1 1 -1h14a1 1 0 0 1 1 1v2a1 1 0 0 1 -1 1h-14a1 1 0 0 1 -1 -1z"
                    />
                    <path
                      d="M4 12m0 1a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v6a1 1 0 0 1 -1 1h-4a1 1 0 0 1 -1 -1z"
                    />
                    <path d="M14 12l6 0" />
                    <path d="M14 16l6 0" />
                    <path d="M14 20l6 0" />
                  </svg>
                  <span class="menu-text">Financial Report</span>
                </a>
              </li>
              <li class="sidebarMenuItem">
                <button
                  class="toggle-btn"
                  onclick="toggleSidebar()"
                  style="color: #333"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="1"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-layout-sidebar-left-collapse"
                  >
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path
                      d="M4 4m0 2a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-12a2 2 0 0 1 -2 -2z"
                    />
                    <path d="M9 4v16" />
                    <path d="M15 10l-2 2l2 2" />
                  </svg>
                  <span class="menu-text">Collapse Sidebar</span>
                </button>
              </li>
            </ul>
          </div>

          <div class="Nav-foot">
            <span>Powered by:</span>
            <img
              src="https://www.stafify.com/cdn/shop/files/e50lj9u5c9xat9j7z3ne_180x.png?v=1613708232"
              alt=""
            />
          </div>
        </nav>
      </div> -->
    </div>
    <!-- Sidebar Mobile Overlay -->
    <div class="sidebar-overlay-mobile"></div>
    <!-- Mobile Sidebar -->
    <div class="sidebar-container-mobile">
      <div class="sidebar-mobile">
        <div class="sidebarMenu-inner">
          <!-- Close Button -->
          <button class="sidebar-close-btn" style="color: #333">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              width="25"
              height="25"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              stroke-width="1"
              stroke-linecap="round"
              stroke-linejoin="round"
              class="icon icon-tabler icons-tabler-outline icon-tabler-x"
            >
              <path stroke="none" d="M0 0h24v24H0z" fill="none" />
              <path d="M18 6l-12 12" />
              <path d="M6 6l12 12" />
            </svg>
          </button>
          <nav id="sidebarMenu">
            <div class="sidebarLogo">
              <img
                src="https://www.stafify.com/cdn/shop/files/e50lj9u5c9xat9j7z3ne_752x.png?v=1613708232"
                class="site-logo"
                alt="Stafify Logo"
              />
            </div>
            <a href="#" class="flex gap-10 items-center card-profile">
              <div class="image-profile">
                <img
                  src="https://heroshotphotography.com/wp-content/uploads/2023/03/male-linkedin-corporate-headshot-on-white-square-1024x1024.jpg"
                />
              </div>
              <div class="details-profile">
                <span class="profile-name">Dowelle Dayle Mon</span>
                <p class="profile-dept">
                  Department <span class="separator">-</span> Position
                </p>
              </div>
            </a>
            <ul class="flex flex-col gap-5 sidebarMenuItems">
              <li class="sidebarMenuItem">
                <a
                  href="#"
                  data-page="analytics"
                  class="nav-link"
                  style="color: #333"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="1"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-chart-scatter"
                  >
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path d="M3 3v18h18" />
                    <path d="M8 15.015v.015" />
                    <path d="M16 16.015v.015" />
                    <path d="M8 7.03v.015" />
                    <path d="M12 11.03v.015" />
                    <path d="M19 11.03v.015" />
                  </svg>
                  <span>Analytics</span>
                </a>
              </li>
              <li class="sidebarMenuItem">
                <a
                  href="JobOrder.html"
                  data-page="index"
                  class="nav-link"
                  style="color: #333"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="1"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-briefcase-2"
                  >
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path
                      d="M3 9a2 2 0 0 1 2 -2h14a2 2 0 0 1 2 2v9a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-9z"
                    />
                    <path d="M8 7v-2a2 2 0 0 1 2 -2h4a2 2 0 0 1 2 2v2" />
                  </svg>
                  <span>Cash Receipts</span>
                </a>
              </li>
              <li class="sidebarMenuItem">
                <a
                  href="cashDisbursement.php"
                  data-page="cash-disbursement"
                  class="nav-link active"
                  style="color: #333"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="1"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-coins"
                  >
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path
                      d="M9 14c0 1.657 2.686 3 6 3s6 -1.343 6 -3s-2.686 -3 -6 -3s-6 1.343 -6 3z"
                    />
                    <path d="M9 14v4c0 1.656 2.686 3 6 3s6 -1.344 6 -3v-4" />
                    <path
                      d="M3 6c0 1.072 1.144 2.062 3 2.598s4.144 .536 6 0c1.856 -.536 3 -1.526 3 -2.598c0 -1.072 -1.144 -2.062 -3 -2.598s-4.144 -.536 -6 0c-1.856 .536 -3 1.526 -3 2.598z"
                    />
                    <path d="M3 6v10c0 .888 .772 1.45 2 2" />
                    <path d="M3 11c0 .888 .772 1.45 2 2" />
                  </svg>
                  <span>Cash Disbursement</span>
                </a>
              </li>
              <li class="sidebarMenuItem">
                <a
                  href="Inventory.php"
                  data-page="inventory"
                  class="nav-link"
                  style="color: #333"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="1"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-building-warehouse"
                  >
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path d="M3 21v-13l9 -4l9 4v13" />
                    <path d="M13 13h4v8h-10v-6h6" />
                    <path d="M13 21v-9a1 1 0 0 0 -1 -1h-2a1 1 0 0 0 -1 1v3" />
                  </svg>
                  <span>Inventory</span>
                </a>
              </li>
              <li class="sidebarMenuItem">
                <a
                  href="#"
                  data-page="templates"
                  class="nav-link"
                  style="color: #333"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="1"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-template"
                  >
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path
                      d="M4 4m0 1a1 1 0 0 1 1 -1h14a1 1 0 0 1 1 1v2a1 1 0 0 1 -1 1h-14a1 1 0 0 1 -1 -1z"
                    />
                    <path
                      d="M4 12m0 1a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v6a1 1 0 0 1 -1 1h-4a1 1 0 0 1 -1 -1z"
                    />
                    <path d="M14 12l6 0" />
                    <path d="M14 16l6 0" />
                    <path d="M14 20l6 0" />
                  </svg>
                  <span>Financial Report</span>
                </a>
              </li>
              <li class="sidebarMenuItem">
                <button
                  class="toggle-btn"
                  onclick="toggleSidebar()"
                  style="color: #fff"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="1"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-layout-sidebar-left-collapse"
                  >
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path
                      d="M4 4m0 2a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-12a2 2 0 0 1 -2 -2z"
                    />
                    <path d="M9 4v16" />
                    <path d="M15 10l-2 2l2 2" />
                  </svg>
                  <span>Collapse Sidebar</span>
                </button>
              </li>
            </ul>
          </nav>
        </div>
        <div class="Nav-foot">
          <span>Powered by:</span>
          <img
            src="https://www.stafify.com/cdn/shop/files/e50lj9u5c9xat9j7z3ne_180x.png?v=1613708232"
            alt=""
          />
        </div>
      </div>
    </div>
    <div class="main-content">
      <!-- Mobile Navigation -->
      <div class="flex justify-between items-center gap-20 w-full mobile-nav">
        <!-- Mobile Menu -->
        <button class="hamburger-menu">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="30"
            height="30"
            viewBox="0 0 24 24"
            fill="none"
            stroke="currentColor"
            stroke-width="1"
            stroke-linecap="round"
            stroke-linejoin="round"
            class="icon-tabler icons-tabler-outline icon-tabler-menu"
          >
            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
            <path d="M4 8l16 0" />
            <path d="M4 16l16 0" />
          </svg>
        </button>
        <div class="menu-container">
          <button onclick="toggleMenu(event)" class="kebab-menu">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              width="24"
              height="24"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              stroke-width="1"
              stroke-linecap="round"
              stroke-linejoin="round"
              class="icon-tabler icons-tabler-outline icon-tabler-user-circle"
            >
              <path stroke="none" d="M0 0h24v24H0z" fill="none" />
              <path d="M12 12m-9 0a9 9 0 1 0 18 0a9 9 0 1 0 -18 0" />
              <path d="M12 10m-3 0a3 3 0 1 0 6 0a3 3 0 1 0 -6 0" />
              <path
                d="M6.168 18.849a4 4 0 0 1 3.832 -2.849h4a4 4 0 0 1 3.834 2.855"
              />
            </svg>
          </button>
          <div class="dropdownMenu menu">
            <button onclick="openProfile()">Profile Settings</button>
            <button onclick="logout()">Logout</button>
          </div>
        </div>
      </div>
      <script>
    // Sidebar
    function toggleSidebar() {
        const sidebar = document.querySelector('.sidebar');
        const mainContent = document.querySelector('.main-content');
        sidebar.classList.toggle('collapsed');

        if (sidebar.classList.contains('collapsed')) {
            mainContent.style.marginLeft = "70px";
        } else {
            mainContent.style.marginLeft = "260px";
        }
    }

    // Sidebar Load icons
    document.addEventListener("DOMContentLoaded", function() {
        feather.replace();
    });

    // Sidebar Mobile
    document.addEventListener("DOMContentLoaded", function () {
        const menuButton = document.querySelector(".hamburger-menu");
        const closeButton = document.querySelector(".sidebar-close-btn");
        const sidebar = document.querySelector(".sidebar-container-mobile");
        const overlay = document.querySelector(".sidebar-overlay-mobile");

        // Function to open sidebar
        function openSidebar() {
            sidebar.classList.add("active");
            overlay.classList.add("active");
        }

        // Function to close sidebar
        function closeSidebar() {
            sidebar.classList.remove("active");
            overlay.classList.remove("active");
        }

        // Open Sidebar on Hamburger Click
        menuButton.addEventListener("click", openSidebar);

        // Close Sidebar on Close Button Click
        closeButton.addEventListener("click", closeSidebar);

        // Close Sidebar when clicking outside (on overlay)
        overlay.addEventListener("click", closeSidebar);
    });

    animateLoadingText(); // Start animation
        
    function toggleDropdown(event, dropdownClass) {
        event.preventDefault();
        const dropdown = document.querySelector(`.${dropdownClass}`);

        if (!dropdown) return;

        if (dropdown.classList.contains("open")) {
        dropdown.style.maxHeight = null;
        dropdown.style.opacity = "0";
        dropdown.style.marginBottom = "-5px";
        dropdown.classList.remove("open");
        } else {
        dropdown.style.maxHeight = dropdown.scrollHeight + "px";
        dropdown.style.opacity = "1";
        dropdown.style.marginBottom = "0px";
        dropdown.classList.add("open");
        }
    }
</script>