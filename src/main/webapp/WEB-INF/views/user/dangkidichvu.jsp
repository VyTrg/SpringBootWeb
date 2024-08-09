<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include" %>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="utf-8">
				<meta http-equiv="X-UA-Compatible" content="IE=edge">
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
				<meta name="description" content="">
				<meta name="author" content="">

				<title>Dang ki dich vu</title>


				<link href="../../../static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
				<link
					href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
					rel="stylesheet">
				<link href="/assets/css/sb-admin-2.min.css" rel="stylesheet">
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
					crossorigin="anonymous">
				<script src="https://code.jquery.com/jquery-3.7.1.min.js"
					integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
					integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
					crossorigin="anonymous"></script>
				<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
					integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
					crossorigin="anonymous"></script>
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
					integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
					crossorigin="anonymous"></script>
			</head>

			<body>

				<!-- Page Wrapper -->
				<div id="wrapper">
					<!-- Sidebar -->
					<%@ include file="../layout/slidebar.jsp" %>
						<div id="content-wrapper" class="d-flex flex-column">
							<!-- Topbar -->
							<%@ include file="../layout/head.jsp" %>
								<nav class="navbar navbar-expand-lg navbar-light bg-light">
									<div class="container-fluid">

										<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
											data-bs-target="#navbarSupportedContent"
											aria-controls="navbarSupportedContent" aria-expanded="false"
											aria-label="Toggle navigation">
											<span class="navbar-toggler-icon"></span>
										</button>
										<div class="collapse navbar-collapse" id="navbarSupportedContent">
											<ul class="navbar-nav me-auto mb-2 mb-lg-0">


											</ul>
											<form class="d-flex me-2">
												<input class="form-control me-2" type="search" placeholder="Tìm kiếm"
													aria-label="Search">
												<button class="btn btn-outline-success" type="submit">Tìm</button>
											</form>

										</div>
									</div>
								</nav>
								<!-- <a class="navbar-brand">Căn hộ</a> -->
								<!-- <select data-mdb-select-init class="canho me-auto mb-2 mb-lg-0"> -->
								<form action="/user/dangkidichvu/${sessionScope.thongtin.ma_chu_so_huu}" method="get">
									<c:forEach var="canho" items="${dscanho}">
										<p style="margin-left: 10px;">Căn hộ: ${canho.ma_can_ho}</p>
										<button type="button" class="btn btn-outline-primary"
											style="margin-left: 10px;">Đăng kí</button>
										<div class="modal fade" id="dangkiModal" tabindex="-1"
											aria-labelledby="exampleModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalLabel">Dịch vụ</h5>
														<button type="button" class="btn-close" data-bs-dismiss="modal"
															aria-label="Close"></button>
													</div>
													<div class="modal-body">
														...
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-secondary"
															data-bs-dismiss="modal">Đóng</button>
														<button type="button" class="btn btn-primary">Lưu</button>
													</div>
												</div>
											</div>
										</div>
										<div class="">
											<div class="col-sm-12">
												<table class="table table-bordered dataTable table-hover js-table"
													id="dataTable" width="100%" cellspacing="0" role="grid"
													aria-describedby="dataTable_info" style="width: 100%;">
													<thead>
														<tr role="row">
															<th class="sorting sorting_asc" tabindex="0"
																aria-controls="dataTable" rowspan="1" colspan="1"
																aria-sort="ascending"
																aria-label="Name: activate to sort column descending"
																style="width: 10px;">STT</th>
															<th class="sorting" tabindex="0" aria-controls="dataTable"
																rowspan="1" colspan="1"
																aria-label="Position: activate to sort column ascending"
																style="width: 150.111px;">Tên dịch vụ</th>
															<th class="sorting" tabindex="0" aria-controls="dataTable"
																rowspan="1" colspan="1"
																aria-label="Position: activate to sort column ascending"
																style="width: 150.111px;">Đơn giá</th>
															<th class="sorting" tabindex="0" aria-controls="dataTable"
																rowspan="1" colspan="1"
																aria-label="Office: activate to sort column ascending"
																style="width: 100px;">Đơn vị</th>
															<th class="sorting" tabindex="0" aria-controls="dataTable"
																rowspan="1" colspan="1"
																aria-label="Office: activate to sort column ascending"
																style="width: 100px;">VAT</th>
														</tr>
													</thead>
													<tbody>
														<c:set var="countt" value="1" scope="session" />
														<c:forEach var="dichvu" items="${canho.ds_dich_vu_can_ho}">
															<tr>
																<td class="sorting_1">${countt}</td>
																<td>${dichvu.dich_vu.ten_dich_vu}</td>
																<td>${dichvu.dich_vu.don_gia}</td>
																<td>${dichvu.dich_vu.don_vi}</td>
																<td>${dichvu.dich_vu.vat}</td>
															</tr>
															<c:set var="countt" value="${countt = countt + 1}"
															scope="session" />
														</c:forEach>
													</tbody>
												</table>

											</div>
									</c:forEach>
								</form>
						</div>
						<%@ include file="../layout/footer.jsp" %>
							<!-- End of Footer -->
							<!-- </div> -->
							<!-- End of Content Wrapper -->
							<!-- </div> -->
							<script type="text/javascript">
							</script>
							<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
								integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
								crossorigin="anonymous"></script>
							<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
								integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
								crossorigin="anonymous"></script>
							<script>
								$(document).ready(function () {
									$("select.canho").change(function () {
										var selected = $(this).children("option:selected").val();
										// alert(selected);
										$.ajax({
											url: "http://localhost:8080/dangkidichvu/dichvu/" + selected,
											type: "GET",
											data: {
												ma_can_ho: selected
											},
											success: function sc() {
												alert('error');
											},
											error: function fail() {
												alert('error');
											}
										})
									});
								});
							</script>
			</body>

			</html>