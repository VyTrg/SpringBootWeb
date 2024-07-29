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

    <title>Hoa don</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/assets/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Library bootstrap -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	
	<!-- add script in dangkidichvu -->
    <!-- <script src="/assets/js/dangkidichvu.js"></script> -->
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
		    <div id="content" class="p-3">
				<h3 class="mb-0 mt-5">THÔNG BÁO HOÁ ĐƠN</h3>
                <p>Tên hoá đơn: Hoá đơn tháng ${thongTinHoaDon.get(0).thang} - năm ${thongTinHoaDon.get(0).nam} </p>
                <hr class="my-4" />
                <strong class="mb-0">Thông tin hoá đơn:</strong>
                <p>Ngày lập: ${thongTinHoaDon.get(0).ngayTao} </p>
                <div class="d-flex">
                    <div class="list-group mb-5 shadow col-lg-5">
                        <div class="list-group-item">
                            <div class="col align-items-center">
                                <strong class="mb-0">Thông tin khách hàng:</strong>
                                <p class="text-muted mb-0">${thongTinHoaDon.get(0).hoTenKhachHang}</p>
                            </div>
                        </div>
                        <div class="list-group-item">
                            <div class="col align-items-center">
                                <strong class="mb-0">Trạng thái:</strong>
                                <p class="text-muted mb-0">Chưa thanh toán</p>
                            </div>
                        </div>
                    </div>
                    <div class="list-group mb-5 shadow ml-auto col-lg-6">
                        <div class="list-group-item">
                            <div class="col align-items-center">
                                <strong class="mb-0">Căn hộ số:</strong>
                                <p class="text-muted mb-0">${thongTinHoaDon.get(0).CanHoSo}</p>
                            </div>
                        </div>
                        <div class="list-group-item">
                            <div class="col align-items-center">
                                <strong class="mb-0">Khu - tầng:</strong>
                                <p class="text-muted mb-0">Khu ${thongTinHoaDon.get(0).khu} - tầng ${thongTinHoaDon.get(0).tang}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="d-flex">
                    <div class="list-group mb-5 shadow col-lg-5">
                        <div class="list-group-item">
                            <div class="col align-items-center">
                                <strong class="mb-0">Thông tin thanh toán:</strong>
                                <p class="text-muted mb-0">Thanh toán hoá đơn tháng ${thongTinHoaDon.get(0).thang} - ${thongTinHoaDon.get(0).nam}</p>
                            </div>
                        </div>
                        <div class="list-group-item">
                            <div class="col align-items-center">
                                <strong class="mb-0">Ngân hàng:</strong>
                                <p class="text-muted mb-0">SHB</p>
                            </div>
                        </div>
                    </div>
                    <div class="list-group mb-5 shadow ml-auto col-lg-6">
                        <div class="list-group-item">
                            <div class="col align-items-center">
                                <strong class="mb-0">Tên người thụ hưởng:</strong>
                                <p class="text-muted mb-0">Công ty ... Việt Nam Chi Nhánh TP.HCM</p>
                            </div>
                        </div>
                        <div class="list-group-item">
                            <div class="col align-items-center">
                                <strong class="mb-0">Số tài khoản:</strong>
                                <p class="text-muted mb-0">000 000 000 000</p>
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="my-4" />
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Thông tin dịch vụ:</h6>
                    </div>
                    <div class="card-body">
                        <div class="table">
                            <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid"
                                            aria-describedby="dataTable_info" style="width: 100%;">
			                                <thead>
			                                    <tr role="row">
			                                        <th class="sorting sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending"
			                                            aria-label="Name: activate to sort column descending" style="width: 10px;">Stt</th>
			                                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
			                                            aria-label="Position: activate to sort column ascending" style="width: 194.111px;">Tên dịch vụ</th>
			                                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
			                                            aria-label="Office: activate to sort column ascending" style="width: 194.111px;">Từ ngày - đến ngày</th>
			                                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
			                                            aria-label="Age: activate to sort column ascending" style="width: 50.1111px;">Số lượng</th>
			                                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
			                                            aria-label="Start date: activate to sort column ascending" style="width: 80.1111px;">Đơn giá</th>
			                                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
			                                            aria-label="Salary: activate to sort column ascending" style="width: 50px;">Thuế</th>
			                                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
			                                            aria-label="Salary: activate to sort column ascending" style="width: 90px;">Tổng</th>
			                                    </tr>
			                                </thead>
			                                <tbody>
		                                		<c:set var="count" value="1" scope="session" /> 
			                                	<c:forEach var="i" items="${listDichVu}">
				                                    <tr class="odd">
				                                        <td>${count}</td>
				                                        <td>${i.dich_vu.ten_dich_vu}</td>
				                                        <td>${i.ngay_bat_dau} - ${thongTinHoaDon.get(0).ngayTao}</td>
				                                        <td>${i.so_luong}</td>
				                                        <td>${i.dich_vu.don_gia}</td>
				                                        <td>${i.dich_vu.vat}</td>
				                                        <td>${i.dich_vu.ten_dich_vu}</td>
				                                    </tr>
				                                    <c:set var="count" value="${count = count + 1}" scope="session" />
			                                	</c:forEach>
			                                    
			                                </tbody>
			                            </table>
			                        </div>
                    			</div>
			                </div>
				                <div class="card card-header-actions mb-4">
				                    <div class="card-header"> Ghi chú:</div>
				                    <div class="card-body">
				                        <form>
				                            <div class="mb-0"> <label class="small mb-2">Vui lòng lưu ý các điều khoản sau đây</label>
				                                <div class="form-check mb-2"> <label class="form-check-label" for="checkAccountChanges">Vui lòng ghi rõ mã căn khi thanh toán chuyển khoản/ Please specify your unit when you making a transfer payment.</label></div>
				                                <div class="form-check mb-2"> <label class="form-check-label" for="checkAccountChanges">Vui lòng thanh toán trước ngày 15 để tránh những chế tài không cần thiết./ Your prompt payment is highly appreciated and to prevent any temporary sanctions due to late payments.</label></div>
				                                <div class="form-check mb-2"> <label class="form-check-label" for="checkAccountChanges">Ngày 15 hệ thống tự động khóa thẻ xe / overdue parking card will be disabled at 15th day</label></div>
				                                <div class="form-check mb-2"> <label class="form-check-label" for="checkAccountChanges">Ngày 25 tạm ngưng cung cấp nước / temporary water disconnection at 25th day</label></div>
				                                <div class="form-check mb-2"> <label class="form-check-label" for="checkAccountChanges">Quý cư dân vui lòng thanh toán trước ngày 25/03/2024 để tránh phát sinh phí chậm nộp với tỷ suất 0.05%/ngày/ Payments make after March 25th
				                                    , 2024 will be brought forward to this month proforma invoice.</label></div>
				                            </div>
				                        </form>
				                    </div>
				                </div>
				            </div>
                <!-- /.container-fluid -->
                
	            <div class="card">
	                <div class="card-body">
	                    <p><strong>Trân trọng</strong></p>
	                    <label for="charge" class="pt">Chung cư Ptit</label>
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
</body>
</html>