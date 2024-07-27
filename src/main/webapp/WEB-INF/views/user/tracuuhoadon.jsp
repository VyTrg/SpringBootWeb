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

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../../../assets/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- add script in hoa don -->
   	<script src="../../../assets/js/hoadon.js"></script>
    <base href="${ pageContext.servletContext.contextPath }/" />
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
		    	<h3 class="mb-0 mt-5">TRA CỨU HOÁ ĐƠN</h3>
                <p>Thông tin hoá đơn</p>
                <hr class="my-4" />
                <strong class="mb-0">Thông tin khách hàng:</strong>
                <p>Mã khách hàng: ${thongTinHoaDon.get(0).maKhachHang}</p>
                <div class="d-flex">
                    <div class="list-group mb-5 shadow col-lg-5">
                        <div class="list-group-item">
                            <div class="col align-items-center">
                                <strong class="mb-0">Tên khách hàng:</strong>
                                <p class="text-muted mb-0">${thongTinHoaDon.get(0).hoTenKhachHang}</p>
                            </div>
                        </div>
                        <div class="list-group-item">
                            <div class="col align-items-center">
                                <strong class="mb-0">Số điện thoại:</strong>
                                <p class="text-muted mb-0">${thongTinHoaDon.get(0).soDienThoai}</p>
                            </div>
                        </div>
                    </div>
                    <div class="list-group mb-5 shadow ml-auto col-lg-6 col-sm-12">
                        <div class="list-group-item">
                            <div class="col align-items-center">
                                <strong class="mb-0">Mã căn hộ:</strong>
                                <c:forEach var="i" items="${danhSachCanHo}">
                                    <p class="text-muted mb-0"><a href="/user/hoadon/${i.ma_can_ho}">${i.ma_can_ho}</a></p>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="list-group-item">
                            <div class="col align-items-center">
                                <strong class="mb-0">Khu - tầng:</strong>
                            	<c:forEach var="i" items="${danhSachCanHo}">
                                	<p class="text-muted mb-0">${i.khu} - ${i.tang}</p>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                            <div class="row">
                                <div class="col-lg-6 col-sm-12"><h6 class="m-0 font-weight-bold text-primary">Thông tin hoá đơn:</h6></div>
                                <div class="col-lg-6 col-sm-12"><label>Search:<input type="search"
                                            class="form-control-sm js-search" placeholder="YYYY/MM/DD" aria-controls="dataTable"></label></div>
                            </div>
                    </div>
                    <div class="card-body">
                        <div class="table">
                            <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-bordered dataTable table-hover js-table" id="dataTable" width="100%" cellspacing="0" role="grid"
                                            aria-describedby="dataTable_info" style="width: 100%;">
                                            <thead>
                                                <tr role="row">
                                                    <th class="sorting sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending"
                                                        aria-label="Name: activate to sort column descending" style="width: 10px;">Stt</th>
                                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                                        aria-label="Position: activate to sort column ascending" style="width: 150.111px;">Tên hoá đơn</th>
                                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                                        aria-label="Position: activate to sort column ascending" style="width: 150.111px;">Mã căn hộ</th>
                                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                                        aria-label="Office: activate to sort column ascending" style="width: 100px;">Số tiền</th>
                                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                                        aria-label="Age: activate to sort column ascending" style="width: 150px;">Ngày đóng</th>
                                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                                        aria-label="Start date: activate to sort column ascending" style="width: 150px;">Ngày lập</th>
                                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                                        aria-label="Salary: activate to sort column ascending" style="width: 100px;">Tiền tháng</th>
                                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                                        aria-label="Salary: activate to sort column ascending" style="width: 90px;">Trạng thái</th>
                                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                                        aria-label="Salary: activate to sort column ascending" style="width: 100px;">Nợ</th>
                                                </tr>
                                            </thead>
                                            <tbody>
	                                		<c:set var="count" value="1" scope="session" />  
                                            <c:forEach var="i" items="${danhSachHoaDon}">
												
	                                                <tr class="odd">
	                                                    <td class="sorting_1">${count}</td>
	                                                    <td>${i.tenHoaDon}</td>
	                                                    <td>${i.maCanHo}</td>
	                                                    <td>${i.soTien}</td>
	                                                    <td>${i.ngayDong}</td>
	                                                    <td>${i.ngayLap}</td>
	                                                    <td>${i.tienThang}</td>
	                                                    <td>${i.trangThai}</td>
	                                                    <td>${i.tienNo}</td>
	                                                </tr>
												
                                                
				                                    <c:set var="count" value="${count = count + 1}" scope="session" />                                                
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
	        </div>
		    <!-- End of Main Content -->
		    
	    
    	</div>
    	<!-- End of Content Wrapper -->
	    <!-- Footer -->
	    <%@ include file="../layout/footer.jsp" %>
	    <!-- End of Footer -->
    </div>
    <!-- End of Page Wrapper -->
</body>
</html>