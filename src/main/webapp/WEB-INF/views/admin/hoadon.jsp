<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Thông tin</title>

<!-- Custom fonts for this template-->
<link href="../../../static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/assets/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Library bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<!-- Library for bootstrap -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script src="../../../static/js/nhanVienHoaDon.js"></script>

</head>
<body>
	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<%@ include file="../layout_admin/slidebar.jsp"%>
		<!-- End of Sidebar -->


		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Topbar -->
			<%@ include file="../layout_admin/head.jsp"%>
			<!-- End of Topbar -->

			<!-- Main Content -->
			<div id="content" class="p-4">
				<div class="row">
				<div class="col-sm-10 container border">
					<div class="row">
					<div>
						<h3 class="my-4 text-center">TẠO HOÁ ĐƠN</h3>
						<hr>
					</div>
						<h4 class="my-4">Thông tin nhân viên</h4>
						
						  <div class="mb-4 px-4">
							<div class="card-body">
							  <div class="row">
								<div class="col-sm-3">
								  <p class="mb-0">Họ và tên</p>
								</div>
								<div class="col-sm-9">
								  <p class="text-muted mb-0">${thongtinnhanvien.ma_nhan_vien}</p>
								</div>
							  </div>
							  <hr>
							  <div class="row">
								<div class="col-sm-3">
								  <p class="mb-0">Mã nhân viên</p>
								</div>
								<div class="col-sm-9">
								  <p class="text-muted mb-0">${thongtinnhanvien.ho_ten}</p>
								</div>
							  </div>
							  <hr>
							  <div class="row">
								<div class="col-sm-3">
								  <p class="mb-0">Số điện thoại</p>
								</div>
								<div class="col-sm-9">
								  <p class="text-muted mb-0">${thongtinnhanvien.sdt}</p>
								</div>
							  </div>
							  <hr>
							  <div class="row">
								<div class="col-sm-3">
								  <p class="mb-0">Căn cước công dân</p>
								</div>
								<div class="col-sm-9">
								  <p class="text-muted mb-0">${thongtinnhanvien.cccd}</p>
								</div>
							  </div>
							  
							</div>
						  </div>
						</div>
							<div class="card-body">
								<div class="row mt-5 mb-5 mx-2">
									<div class="col-sm-12 container border">
										<h4>Danh sách hóa đơn</h4>
										<div class="row">
											<div class="container mt-3">
												<table class="table table-striped">
													<thead>
														<tr>
															<th>STT</th>
															<th>Mã hoá đơn</th>
															<th>Tên hoá đơn</th>
															<th>Căn hộ</th>
															<th>Nhân viên</th>
															<th>Ngày lập</th>
															<th>Số tiền</th>
															<th>Nợ</th>
															<th>Tình trạng</th>
															<th></th>
														</tr>
													</thead>
													<tbody>
														<c:set var="count" value="1" scope="session" />
														<c:forEach var="i" items="${dsHoaDon}">
															<tr>
																<td>${count}</td>
																<td>${i.get("ma_hoa_don")}</td>
																<td>${i.get("tenHoaDon")}</td>
																<td>${i.get("canHo")}</td>
																<td>${i.get("nhanVien")}</td>
																<td>${i.get("ngayLap")}</td>
																<td>${i.get("soTien")}</td>
																<td>${i.get("no")}</td>
																<td>${i.get("trangThai")}</td>
																<td><a href="">Chi tiet</a></td>
															</tr>
															<c:set var="count" value="${count = count + 1}"
																scope="session" />
														</c:forEach>
														
													</tbody>
												</table>
												<div class="col text-center  mb-3">
													<button class="btn btn-primary" data-toggle="modal" data-target="#modalTaoHoaDon">Tạo 1 hóa đơn</button>
													<button class="btn btn-primary" data-toggle="modal" data-target="#modalTaoTatCaHoaDon">Tạo nhiều hoá đơn</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--Start modal tao hoa don -->
					<div class="modal fade" id="modalTaoHoaDon" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLongTitle">Tạo hoá đơn</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
							<div class="container">
								<div class="row head-receipt p-4 bg-secondary text-white">
									<div class="col-lg-6"><h2>HOÁ ĐƠN</h2></div>
									<div class="col-lg-6">
										<p>Tên hoá đơn: </p>
									</div>
								</div>
								<div class="content-receipt">
									<div class="row container">
										<hr>
										<div class="col-lg-6">
											<h4>Người nhận</h4>
											<select class="Apartment-select my-2" aria-label="Default select example">
												<option value="">Chọn chủ sở hữu</option>
												<c:forEach var="i" items="${dsChuSoHuu}">
												  <option value="${i.ma_chu_so_huu}">${i.ho_ten}</option>
												</c:forEach>
											</select>
											<table class="table">
											  <thead>
											  </thead>
											  <tbody>
											    <tr>
											      <td><p class="px-2">Họ tên: </p></td>
											      <td><input type="text" class="form-control" value="${thongtinnhanvien.ho_ten}" readonly="true"></td>
											    </tr>
											    <tr>
											      <td><p class="px-2">Sdt: </p></td>
											      <td><input type="text" class="form-control" value="${thongtinnhanvien.cccd}" readonly="true"></td>
											    </tr>
											    <tr>
											      <td><p class="px-2">CCCD: </p></td>
											      <td><input type="text" class="form-control" value="${thongtinnhanvien.sdt}" readonly="true"></td>
											    </tr>
											  </tbody>
											</table>
										</div>
										
										<div class="col-lg-6">
											<h4>Căn hộ:</h4>
											<select class="client-select my-2" aria-label="Default select example">
												<option value="">Chọn căn hộ</option>
												<c:forEach var="i" items="${dsCanHo}">
												  <option value="${i.ma_can_ho}">${i.ma_can_ho}</option>
												</c:forEach>
											</select>
											<table class="table">
											  <thead>
											  </thead>
											  <tbody>
											    <tr>
											      <td><p class="px-2">Mã căn hộ: </p></td>
											      <td><input type="text" class="form-control" value="${thongtinnhanvien.ho_ten}" readonly="true"></td>
											    </tr>
											    <tr>
											      <td><p class="px-2">Khu: </p></td>
											      <td><input type="text" class="form-control" value="${thongtinnhanvien.cccd}" readonly="true"></td>
											    </tr>
											    <tr>
											      <td><p class="px-2">Tầng: </p></td>
											      <td><input type="text" class="form-control" value="${thongtinnhanvien.sdt}" readonly="true"></td>
											    </tr>
											  </tbody>
											</table>
										</div>
									</div>
									<div class="container mt-3">
										<hr>
										<table class="table table-striped">
											<thead>
												<tr>
													<th>Stt</th>
													<th>Mã dịch vụ</th>
													<th>Tên dịch vụ</th>
													<th>Thuế VAT</th>
													<th>Đơn giá</th>
													<th>Đơn vị</th>
													<th>Số lượng</th>
													<th></th>
												</tr>
											</thead>
											<c:set var="count" value="1" scope="session" />
											<tbody id="remove-modal">
											<c:forEach var="p" items="${dichvudaco}">
												<tr id="${p.dich_vu.ma_dich_vu}">
													<td>${count}</td>
													<td>${p.dich_vu.ma_dich_vu}</td>
													<td>${p.dich_vu.ten_dich_vu}</td>
													<td>${p.dich_vu.vat}</td>
													<td>${p.dich_vu.don_gia}</td>
													<td>${p.dich_vu.don_vi}</td>
													<td>${p.so_luong}</td>
													<td><a href=""><button class="btn btn-primary js-button-remove">Xóa</button></a></td>
												</tr>
												<c:set var="count" value="${count = count + 1}" scope="session" />
											</c:forEach>
											</tbody>
											<tr>
												<th>Tổng cộng</th>
											</tr>
										</table>
										<hr>
									</div>
								</div>
								<div class="row footer-receipt">
									<div class="col-lg-6">
										<p>Cám ơn đã sử dụng tại chung cư</p>
										<p>Vui lòng đóng phí trước ngày 15 hàng tháng</p>
										<p>Liên hệ ban quản lí nếu có thắc mắc:</p>
									</div>
									<div class="col-lg-6">
										<p>CHUNG CƯ PTIT</p>
										<p>Email: nhom22@gmail.com</p>
										<p>Sdt:(+84) 000 000 0000</p>
									</div>
								</div>
							</div>
							<button type="button" class="btn btn-primary d-flex ml-auto">Lập hoá đơn</button>
					      </div>
					      <div class="modal-footer">
					        <a href=""><button type="button" class="btn btn-primary">Xong</button></a>
					      </div>
					    </div>
					  </div>
					</div>
					<!--End modal tao hoa don -->
					<!--Start modal tao hoa don -->
					<div class="modal fade" id="modalTaoTatCaHoaDon" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLongTitle">Tạo hoá đơn</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
							<div class="container">
								<div class="row head-receipt p-4 bg-secondary text-white">
									<div class="col-lg-6"><h2>HOÁ ĐƠN</h2></div>
									<div class="col-lg-6">
										<p>Tên hoá đơn: </p>
									</div>
								</div>
								<div class="content-receipt">
									<div class="row container">
										<hr>										
									</div>
									<div class="container mt-3">
										<hr>
										<form action="/admin/quanlihoadon/laphoadon" method="post" id="formHoadon">
										<table class="table table-striped">
											<thead>
												<tr>
													<th>Mã căn hộ</th>
													<th>Diện tích</th>
													<th>Mã chủ sở hữu</th>
													<th>Chủ sở hữu</th>
													<th>Khu</th>
													<th>Tầng</th>
													<th>Chi tiết</th>
													<th><input type="checkbox" id="" name="" value=""></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="p" items="${dsCanHo}">
													<tr>
														<td>${p.ma_can_ho}</td>
														<td>${p.dien_tich}</td>
														<td>${p.chuSoHuu.ma_chu_so_huu}</td>
														<td>${p.chuSoHuu.ho_ten}</td>
														<td>${p.khu}</td>
														<td>${p.tang}</td>
														<td><a href="/admin/canho/${p.ma_can_ho}">Chi tiết</a></td>
														<td><input type="checkbox" id="checkbox-Receipt" name="maCanHo" value="${p.ma_can_ho}"></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<button type="submit" class="btn btn-primary d-flex ml-auto">Lập hoá đơn</button>
										</form>
										<hr>
									</div>
								</div>
<!-- 								<div class="row footer-receipt">
									<div class="col-lg-6">
										<p>Cám ơn đã sử dụng tại chung cư</p>
										<p>Vui lòng đóng phí trước ngày 15 hàng tháng</p>
										<p>Liên hệ ban quản lí nếu có thắc mắc:</p>
									</div>
									<div class="col-lg-6">
										<p>CHUNG CƯ PTIT</p>
										<p>Email: nhom22@gmail.com</p>
										<p>Sdt:(+84) 000 000 0000</p>
									</div>
								</div> -->
							</div>
							
					      </div>
					      <div class="modal-footer">
					        <a href=""><button type="button" class="btn btn-primary">Xong</button></a>
					      </div>
					    </div>
					  </div>
					</div>
					<!--End modal tao hoa don -->
				</div>
			</div>
			<!-- End of Main Content -->
			<!-- Footer -->
			<%@ include file="../layout/footer.jsp"%>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
	</div>
</body>
</html>