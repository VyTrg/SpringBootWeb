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
								<!-- End of Topbar -->

								<!-- Main Content -->
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">Căn hộ</h6>
									<!-- <div class="col-auto">  -->
									<div class="btn-group">
										<button type="button" class="btn btn-light dropdown-toggle"
											data-bs-toggle="dropdown" aria-expanded="false">
											Action
										</button>
										<form action="" method="GET">
											<ul class="dropdown-menu">
												
											</ul>
										</form>
									</div>
									<!-- </div> -->
									<!-- Button trigger modal -->
									<button type="button" class="btn btn-primary" data-bs-toggle="modal"
										data-bs-target="#dangkiModal">
										Đăng kí
									</button>

									<!-- Modal -->
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
								</div>
								<div class="card-body">
									<!-- <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
												<div class="row">
													<div class="col-sm-12">
														<table
															class="table table-bordered dataTable table-hover js-table"
															id="dataTable" width="100%" cellspacing="0" role="grid"
															aria-describedby="dataTable_info" style="width: 100%;">
															<thead>
																<tr role="row">
																	<th class="sorting sorting_asc" tabindex="0"
																		aria-controls="dataTable" rowspan="1"
																		colspan="1" aria-sort="ascending"
																		aria-label="Name: activate to sort column descending"
																		style="width: 10px;">STT</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="dataTable" rowspan="1"
																		colspan="1"
																		aria-label="Position: activate to sort column ascending"
																		style="width: 150.111px;">Tên dịch vụ</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="dataTable" rowspan="1"
																		colspan="1"
																		aria-label="Position: activate to sort column ascending"
																		style="width: 150.111px;">Đơn giá</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="dataTable" rowspan="1"
																		colspan="1"
																		aria-label="Position: activate to sort column ascending"
																		style="width: 150.111px;">Đơn vị</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="dataTable" rowspan="1"
																		colspan="1"
																		aria-label="Office: activate to sort column ascending"
																		style="width: 100px;">Thuế</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="dataTable" rowspan="1"
																		colspan="1"
																		aria-label="Salary: activate to sort column ascending"
																		style="width: 100px;"></th>
																</tr>
															</thead>
															<tbody>
																<c:set var="countt" value="1" scope="session" />
																<c:forEach var="dv" items="${dichvu}">
																	<tr>
																		<th class="sorting_1">${countt}</th>
																		<td scope="row">${dv.ten_dich_vu}</td>
																		<td>${dv.don_gia}</td>
																		<td>${dv.don_vi}</td>
																		<td>${dv.vat}%</td>
																		<td>
																			<button type="button"
																				class="btn btn-light btn-submit"
																				data-bs-toggle="modal"
																				data-bs-target="#dkdvModal"
																				data-test="${dv.ten_dich_vu}">Đăng
																				kí</button>
																			<div class="modal fade" id="dkdvModal"
																				tabindex="-1"
																				aria-labelledby="exampleModalLabel"
																				aria-hidden="true">
																				<div class="modal-dialog">
																					<div class="modal-content">
																						<div class="modal-header">
																							<h5 class="modal-title"
																								id="exampleModalLabel">
																								Đăng kí dịch vụ</h5>
																							<button type="button"
																								class="btn-close"
																								data-bs-dismiss="modal"
																								aria-label="Close"></button>
																						</div>
																						<div class="modal-body">
																							<h6 id="modal_body"></h6>
																						</div>
																						<div class="modal-footer">
																							<button type="button"
																								class="btn btn-secondary"
																								data-bs-dismiss="modal">Đóng</button>
																							<button type="button"
																								class="btn btn-primary">Xác
																								nhận</button>
																						</div>
																					</div>
																				</div>
																			</div>
																		</td>
																	</tr>
																	<c:set var="countt" value="${countt = countt + 1}"
																		scope="session" />
																</c:forEach>
															</tbody>
														</table>
													</div>
												</div> -->
									<!-- <div class="card mb-4"> -->
									<!-- <div class="row g-3 align-items-center"> -->
									<!-- <div class="col-auto">
															<label class="col-form-label">Căn hộ</label>
														</div> -->
									<!-- <div class="col-auto"> 

															<div class="btn-group">
																<button type="button"
																	class="btn btn-light dropdown-toggle"
																	data-bs-toggle="dropdown" aria-expanded="false">
																	Action
																</button>
																<ul class="dropdown-menu">
																	<li><a class="dropdown-item" href="#">Action</a>
																	</li>
																	<li><a class="dropdown-item" href="#">Another
																			action</a></li>
																	<li><a class="dropdown-item" href="#">Something else
																			here</a></li>
																	<li>
																		<hr class="dropdown-divider">
																	</li>
																	<li><a class="dropdown-item" href="#">Separated
																			link</a></li>
																</ul>
															</div>
															</div> -->

									<!-- </div> -->
									<select name="canho" id="canho" class="form-controll">
										<option th:each="canho: ${dscanho}"
										th:value="${canho.ma_can_ho}"
										th:name="${canho.ma_can_ho}"></option>
									</select>
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
														aria-label="Salary: activate to sort column ascending"
														style="width: 100px;">Số lượng</th>
													<!-- <th class="sorting" tabindex="0"
																		aria-controls="dataTable" rowspan="1"
																		colspan="1"
																		aria-label="Salary: activate to sort column ascending"
																		style="width: 100px;">Ngày bắt đầu</th> -->
												</tr>
											</thead>
											<tbody>

											</tbody>
										</table>


										<!-- </div> -->
									</div>
								</div>
								<%@ include file="../layout/footer.jsp" %>
									<!-- End of Footer -->
									<!-- </div> -->
									<!-- End of Content Wrapper -->
									<!-- </div> -->
									<script type="text/javascript">

										var btns = document.querySelectorAll('.btn-submit');
										btns.forEach(function (btn) {
											btn.addEventListener('click', function () {
												$("#modal_body").html(btn.getAttribute('data-test'));
											})
										})

										var btn_tim = document.querySelector('.btn-tim');
										btn_tim.addEventListener('click', function () {
											alert($("#canho").val());
										})
									</script>
									<script
										src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
										integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
										crossorigin="anonymous"></script>
									<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
										integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
										crossorigin="anonymous"></script>
			</body>

			</html>