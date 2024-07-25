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
	
</head>
<body>
    <!-- Page Wrapper -->
    <div id="wrapper">
		<!-- Sidebar -->
		<%@ include file="../layout/slidebar.jsp" %>
		
	    <!-- End of Sidebar -->

		
	    <!-- Content Wrapper -->
	    <div id="content-wrapper" class="d-flex flex-column">
	    	<!-- Topbar -->
				<%@ include file="../layout/head.jsp" %>
			<!-- End of Topbar -->
	    	
		    <!-- Main Content -->
		    <div id="content" class="p-4">
			    <h3 class="mb-0 mt-5">Thông tin chủ sở hữu</h3>
	                <hr class="my-4" />
	                <div>
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
	                   </div>
	                <hr class="my-4" />
					<div _ngcontent-riq-c12="" class="card mb-4">
						<div class="card-header">Căn hộ đang sở hữu:</div>
						<div class="card-body"><sb-ng-bootstrap-table>
									<table class="table table-striped">
										<thead>
											<tr>
												<th sbsortable="name" scope="col"><span>Mã căn hộ</span><!----></th>
												<th sbsortable="area" scope="col"><span>Chủ sở hữu</span><!----></th>
												<th sbsortable="population" scope="col"><span>Diện tích</span><!----></th>
												<th sbsortable="population" scope="col"><span>Khu</span><!----></th>
												<th sbsortable="population" scope="col"><span>Tầng</span><!----></th>
											</tr>
										</thead>
										<tbody><!---->
											<c:forEach var="i" items="${danhsachcanho}">
											<tr>
											<td><ngb-highlight>${i.ma_can_ho}</ngb-highlight></td>
											<td><ngb-highlight>${i.ma_chu_so_huu}</ngb-highlight></td>
											<td><ngb-highlight>${i.dien_tich}</ngb-highlight></td>
											<td><ngb-highlight>${i.khu}</ngb-highlight></td>
											<td><ngb-highlight>${i.tang}</ngb-highlight></td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
							</sb-ng-bootstrap-table>
						</div>
				</div>
			</div>
		    <!-- End of Main Content -->
		    
		    <!-- Footer -->
		    <%@ include file="../layout/footer.jsp" %>
		    <!-- End of Footer -->
	    </div>
	   <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
</body>
</html>