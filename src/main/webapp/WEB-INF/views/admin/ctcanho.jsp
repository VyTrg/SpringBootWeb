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

<title>Thông tin căn hộ</title>

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

<!-- Library bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
 <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="../../../static/js/ctCanHo.js" ></script>

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
				<div class="col-sm-10 container border">
					<h2 class="text-center">Thông tin căn hộ</h2>
					<div class="row">
						<div class="container mt-3">
							<table class="table table-striped js-table-home">
								<thead>
									<tr>
										<th>Căn hộ</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<form:form action="/canho/suathongtin" method="post" modelAttribute="ch" id="js-edit-info">
								<tbody>
									<tr>
										<td>Mã căn hộ</td>
										<td><form:input path="ma_can_ho" style="width: 50%"
												cssClass="form-control" readonly="true" id="js-home"/></td>
										<td></td>
									</tr>
									<tr>
										<td>Diện tích</td>
										<td><form:input path="dien_tich" style="width: 50%"
												cssClass="form-control" readonly="true" /></td>
										<td></td>
									</tr>
									<tr>
										<td>Khu</td>
										<td><form:input path="khu" style="width: 50%"
												cssClass="form-control" readonly="true" /></td>
										<td></td>
									</tr>
									<tr>
										<td>Tầng</td>
										<td><form:input path="tang" style="width: 50%"
												cssClass="form-control" readonly="true" /></td>
										<td></td>
									</tr>
									<tr>
										<td>Mã chủ sở hữu</td>
										<td>
										<form:input path="chuSoHuu.ma_chu_so_huu"
												style="width: 50%" cssClass="form-control" readonly="true" id="js-input-id"/>
										</td>
										<td>
										<select class="form-select js-select-info" aria-label="Default select example">
										  <option selected>${ch.chuSoHuu.ma_chu_so_huu}</option>
										  <c:forEach var="i" items="${csh}">
											<option value="${i.ma_chu_so_huu}">${i.ma_chu_so_huu}</option>
										  </c:forEach>
										</select>	</td>
									</tr>
									<tr>
										<td>Chủ sở hữu</td>
										<td><form:input path="chuSoHuu.ho_ten"
												style="width: 50%" cssClass="form-control" id="js-name-info" readonly="true"/></td>
										<td><a href="/admin/thongtin/csh/${ch.chuSoHuu.ma_chu_so_huu}">Chi tiết</a></td>
									</tr>
									<tr>
										<td></td>
										<td><a href=""><button type="submit" class="btn btn-primary">Sửa</button></a></td>
										<td></td>
									</tr>
								</tbody>
								</form:form>
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-1"></div>
			</div>
			<div class="row mt-5">
				<div class="col-sm-1"></div>
				<div class="col-sm-10 container border">
					<h2>Thông tin dịch vụ đã đăng kí</h2>
					<div class="row">
						<div class="container mt-3">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>#</th>
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
								<c:forEach var="p" items="${dv}">
									<tbody>
										<tr>
											<td>${count}</td>
											<td>${p.dich_vu.ma_dich_vu}</td>
											<td>${p.dich_vu.ten_dich_vu}</td>
											<td>${p.dich_vu.vat}</td>
											<td>${p.dich_vu.don_gia}</td>
											<td>${p.dich_vu.don_vi}</td>
											<td>${p.so_luong}</td>
											<td><button class="btn btn-primary">Xóa</button></td>
										</tr>
									</tbody>
									<c:set var="count" value="${count = count + 1}" scope="session" />
								</c:forEach>
							</table>
						</div>
					</div>
					<hr>
					<div class="col d-flex justify-content-end mb-3 me-4">
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
						  Thêm
						</button>
					</div>
					
					
					<!-- Modal -->
					<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLongTitle">Dịch vụ chưa đăng kí</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
							<table class="table">
							  <thead>
							    <tr>
							      <th scope="col">Tên dịch vụ:</th>
							      <th scope="col">Đơn giá:</th>
							      <th scope="col">Thuế:</th>
							      <th scope="col">Số lượng:</th>
							      
							    </tr>
							  </thead>
							  <tbody id="register-modal">
							  <c:forEach var="i" items="${dichvuchuathem}">
							    <tr id="${i.dich_vu.ma_dich_vu}">
							      <th>${i.dich_vu.ten_dich_vu}</th>
							      <td>${i.dich_vu.don_gia}</td>
							      <td>${i.dich_vu.vat}</td>
							      <td><input type="number" class="form-range js-count count-service" id="customRange" min="0" max="50" value="1"></td>
							   		<td><div class="form-check">
											<button type="button" class="btn btn-secondary js-button-add">Thêm</button>
										</div></td>
							   	
							    </tr>
							  </c:forEach> 
							  </tbody>
							</table>
					      </div>
					      <div class="modal-footer">
					        <a href=""><button type="button" class="btn btn-primary">Xong</button></a>
					        
					      </div>
					    </div>
					  </div>
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
<script>
  
	var listcsh = '${csh}';
</script>
</body>
</html>