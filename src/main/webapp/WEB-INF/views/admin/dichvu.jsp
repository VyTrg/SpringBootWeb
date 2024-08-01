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

<title>Thông tin dịch vụ</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="../../../static/js/ctCanHo.js" ></script>

<!-- Library bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	
 	<script src="../../../static/js/nhanVienDichVu.js"></script>

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
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-10 border">
					<div class="row">
						<h2 class="text-center">Bảng dịch vụ</h2>
						<div class="container mt-3">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>Mã dịch vụ</th>
										<th>Tên dịch vụ</th>
										<th>Thuế VAT</th>
										<th>Đơn giá</th>
										<th>Đơn vị</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody class="js-service-modal">
									<c:forEach var="p" items="${dv}">
										<tr>
											<td>${p.ma_dich_vu}</td>
											<td>${p.ten_dich_vu}</td>
											<td>${p.vat}</td>
											<td>${p.don_gia}</td>
											<td>${p.don_vi}</td>
											<td><button type="button" class="btn btn-primary js-button-edit" data-toggle="modal" data-target="#exampleModalCenter">
											  Sửa
											</button></td>
											<td><a href=""><button class="btn btn-danger js-button-remove">Xóa</button></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-1"></div>
			</div>

			<form method="post" action="/admin/dichvu/create">
				<div class="row mt-4">
					<div class="col-sm-1"></div>
					<div class="col-sm-10 border">
						<div class="row">
							<h3>Thêm dịch vụ</h3>
							<div class="container col-sm-6 mt-3">
								<table class="table table-striped js-table-service">
									<thead>
									</thead>
									<tbody>
										<tr style="display: none">
											<td>Mã dịch vụ</td>
											<td><input type="text" class="form-control" id=""
												placeholder="Mã dịch vụ" name="ma_dich_vu"></td>
										</tr>
										<tr>
											<td>Tên dịch vụ</td>
											<td><input type="text" class="form-control" id="ten_dich_vu"
												placeholder="Tên dịch vụ" name="ten_dich_vu"></td>
										</tr>
										<tr>
											<td>Thuế VAT</td>
											<td><input type="text" class="form-control" id="vat"
												placeholder="Thuế VAT" name="vat"></td>
										</tr>
										<tr>
											<td>Đơn giá</td>
											<td><input type="text" class="form-control" id="don_gia"
												placeholder="Đơn giá" name="don_gia"></td>
										</tr>
										<tr>
											<td>Đơn vị</td>
											<td><input type="text" class="form-control" id="don_vi"
												placeholder="Đơn vị" name="don_vi"></td>
										</tr>
									</tbody>
								</table>
								<div class="col text-center mb-3">
									<button class="btn btn-primary">Thêm</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-1"></div>
				</div>
				
			</form>
			<!-- Button trigger modal -->
			
			<!-- Modal -->
			<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLongTitle">Sửa dịch vụ</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
					<form method="post" action="/admin/dichvu/edit">
						<div class="row mt-4">
							<div class="col-sm-1"></div>
							<div class="col-sm-10 border">
								<div class="row">
									<div class="container col-sm-8 mt-3">
										<table class="table table-striped">
											<thead>
											</thead>
											<tbody class="js-edit-table-service">
												<tr>
													<td>Mã dịch vụ</td>
													<td><input type="text" class="form-control" id="ma_dich_vu"
														placeholder="Mã dịch vụ" name="ma_dich_vu" readonly="true"></td>
												</tr>
												<tr>
													<td>Tên dịch vụ</td>
													<td><input type="text" class="form-control" id="ten_dich_vu"
														placeholder="Tên dịch vụ" name="ten_dich_vu"></td>
												</tr>
												<tr>
													<td>Thuế VAT</td>
													<td><input type="text" class="form-control" id="vat"
														placeholder="Thuế VAT" name="vat"></td>
												</tr>
												<tr>
													<td>Đơn giá</td>
													<td><input type="text" class="form-control" id="don_gia"
														placeholder="Đơn giá" name="don_gia"></td>
												</tr>
												<tr>
													<td>Đơn vị</td>
													<td><input type="text" class="form-control" id="don_vi"
														placeholder="Đơn vị" name="don_vi"></td>
												</tr>
											</tbody>
										</table>
										<div class="col text-center mb-3">
											<button class="btn btn-primary">Sửa</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-1"></div>
						</div>
						
					</form>
			      </div>
			      <div class="modal-footer">
			        <a href=""><button type="button" class="btn btn-primary">Xong</button></a>
			        
			      </div>
			    </div>
			  </div>
			</div>

			<!-- End of Main Content -->
			<!-- Footer -->
			<%@ include file="../layout_admin/footer.jsp"%>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
	</div>
</body>
</html>