<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
 <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

<!--     <title>SB Admin 2 - Dashboard</title> -->

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../../../assets/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<base href="${ pageContext.servletContext.contextPath }/" />
</head>
<body>
    <!-- Page Wrapper -->
    <div id="wrapper">
		<!-- Sidebar -->
		<%@ include file="../layout_admin/slidebar.jsp" %>
		
	    <!-- End of Sidebar -->

		
	    <!-- Content Wrapper -->
	    <div id="content-wrapper" class="d-flex flex-column">
	    	<!-- Topbar -->
				<%@ include file="../layout_admin/head.jsp" %>
			<!-- End of Topbar -->
	    	
		    <!-- Main Content -->
		    <section style="background-color: #eee;">
				<div class="container py-5">
				  <div class="row">
					<div class="col">
					  <nav aria-label="breadcrumb" class="bg-body-tertiary rounded-3 p-3 mb-4">
						<ol class="breadcrumb mb-0">
						
						  <li class="breadcrumb-item active" aria-current="page" style="font-weight: bold;">Thông tin người dùng</li>
						</ol>
					  </nav>
					</div>
				  </div>
			  
				  <div class="row">
					<div class="col-lg-4">
					  <div class="card mb-4">
						<div class="card-body text-center">
						  <img src="../../../static/images/profile.jpg" alt="avatar"
							class="rounded-circle img-fluid" style="width: 150px;">
						  <h5 class="my-3">${thongtin_nv.ho_ten}</h5>
						</div>
					  </div>
					  
					</div>
					<div class="col-lg-8">
					  <div class="card mb-4">
						<div class="card-body">
						  <div class="row">
							<div class="col-sm-3">
							  <p class="mb-0">Họ và tên</p>
							</div>
							<div class="col-sm-9">
							  <p class="text-muted mb-0">${thongtin_nv.ho_ten}</p>
							</div>
						  </div>
						  <hr>
						  <div class="row">
							<div class="col-sm-3">
							  <p class="mb-0">Mã khách hàng</p>
							</div>
							<div class="col-sm-9">
							  <p class="text-muted mb-0">${thongtin_nv.ma_chu_so_huu}</p>
							</div>
						  </div>
						  <hr>
						  <div class="row">
							<div class="col-sm-3">
							  <p class="mb-0">Số điện thoại</p>
							</div>
							<div class="col-sm-9">
							  <p class="text-muted mb-0">${thongtin_nv.sdt}</p>
							</div>
						  </div>
						  <hr>
						  <div class="row">
							<div class="col-sm-3">
							  <p class="mb-0">Giới tính</p>
							</div>
							<div class="col-sm-9">
							  <p class="text-muted mb-0">${thongtin_nv.phai}</p>
							</div>
						  </div>
						  <hr>
						  <div class="row">
							<div class="col-sm-3">
							  <p class="mb-0">Ngày sinh</p>
							</div>
							<div class="col-sm-9">
							  <p class="text-muted mb-0">${thongtin_nv.ngay_sinh}</p>
							</div>
						  </div>
						  <hr>
						  <div class="row">
							<div class="col-sm-3">
							  <p class="mb-0">Căn cước công dân</p>
							</div>
							<div class="col-sm-9">
							  <p class="text-muted mb-0">${thongtin_nv.cccd}</p>
							</div>
						  </div>
						  
						</div>
					  </div>
					</div>
				  </div>
				</div>
			  </section>
			
			<div id="content" class="p-4">
			    <!-- <h3 class="mb-0 mt-5">Thông tin chủ sở hữu</h3> -->
	                <!-- <hr class="my-4" /> -->
	                <!-- <div>
	                    <div class="list-group mb-5 shadow col-lg-8 col-sm-12">
	                        <div class="list-group-item">
	                            <div class="col align-items-center">
	                                <strong class="mb-0">Thông tin khách hàng:</strong>
	                                <p class="text-muted mb-0">${thongtinkhachhang.ho_ten}</p>
	                            </div>
	                        </div>
	                        <div class="list-group-item">
	                            <div class="col align-items-center">
	                                <strong class="mb-0">Mã khách hàng:</strong>
	                                <p class="text-muted mb-0">${thongtinkhachhang.ma_chu_so_huu}</p>
	                            </div>
	                        </div>
	                        <div class="list-group-item">
	                            <div class="col align-items-center">
	                                <strong class="mb-0">Số điện thoại:</strong>
	                                <p class="text-muted mb-0">${thongtinkhachhang.sdt}</p>
	                            </div>
	                        </div>
	                        <div class="list-group-item">
	                            <div class="col align-items-center">
	                                <strong class="mb-0">Giới tính:</strong>
	                                <p class="text-muted mb-0">${thongtinkhachhang.phai}</p>
	                            </div>
	                        </div>
	                        <div class="list-group-item">
	                            <div class="col align-items-center">
	                                <strong class="mb-0">Ngày sinh:</strong>
	                                <p class="text-muted mb-0">${thongtinkhachhang.ngay_sinh}</p>
	                            </div>
	                        </div>
	                        <div class="list-group-item">
	                            <div class="col align-items-center">
	                                <strong class="mb-0">Căn cước công dân:</strong>
	                                <p class="text-muted mb-0">${thongtinkhachhang.cccd}</p>
	                            </div>
	                        </div>
	                        <div class="list-group-item">
	                            <div class="col align-items-center">
	                                <strong class="mb-0">Trạng thái:</strong>
	                                <p class="text-muted mb-0">Đang hoạt động</p>
	                            </div>
	                        </div>
	                    </div>
	                   </div> -->
	                
		    <!-- End of Main Content -->
		    
		    <!-- Footer -->
		    <%@ include file="../layout_admin/footer.jsp" %>
		    <!-- End of Footer -->
	    </div>
	   <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
</body>
</html>