<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-text mx-3">Quản lý phí chung cư</div>
    </a>
    <li class="nav-item">
        <a class="nav-link collapsed" data-toggle="collapse" data-target="#collapseTwo"
            aria-expanded="true" aria-controls="collapseTwo" id="collapse-container">
            <!-- <i class="fas fa-fw fa-cog"></i> -->
            <span>Hóa đơn</span>
            <!-- <i class="bi bi-arrow-down-short" id="expandHoaDon" ></i> -->
        </a>
        <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="/user/tracuuhoadon/${sessionScope.thongtin.ma_chu_so_huu}">Tra cứu hóa đơn</a>
                <a class="collapse-item"  href="/user/hoadon/${sessionScope.thongtin.ma_chu_so_huu}">Thanh toán hóa đơn</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" data-toggle="collapse" data-target="#collapseUtilities"
            aria-expanded="true" aria-controls="collapseUtilities">
            <!-- <i class="fas fa-fw fa-wrench"></i> -->
            <span>Dịch vụ</span>
        </a>
        <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="/user/dangkidichvu/${sessionScope.thongtin.ma_chu_so_huu}">Đăng kí dịch vụ</a>
                <!-- <a class="collapse-item"  href="../hoadon/CSH3">Lịch sử hóa đơn</a> -->
            </div>
        </div>
    </li>

    <!-- Divider -->
<!--     <hr class="sidebar-divider"> -->

    <!-- Heading -->
<!--     <div class="sidebar-heading"> -->
<!--         Addons -->
<!--     </div> -->

    <!-- Nav Item - Pages Collapse Menu -->
    <!-- <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
            aria-expanded="true" aria-controls="collapsePages">
            <i class="fas fa-fw fa-folder"></i>
            <span>Căn hộ</span>
        </a>
        <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item">Thông tin căn hộ</a>
            </div>
        </div>
    </li> -->

    <!-- Nav Item - Charts -->
<!--     <li class="nav-item"> -->
<!--         <a class="nav-link" href="charts.html"> -->
<!--             <i class="fas fa-fw fa-chart-area"></i> -->
<!--             <span>Charts</span></a> -->
<!--     </li> -->

    <!-- Nav Item - Tables -->
<!--     <li class="nav-item"> -->
<!--         <a class="nav-link" href="tables.html"> -->
<!--             <i class="fas fa-fw fa-table"></i> -->
<!--             <span>Tables</span></a> -->
<!--     </li> -->

    <!-- Divider -->
<!--     <hr class="sidebar-divider d-none d-md-block"> -->


</ul>
