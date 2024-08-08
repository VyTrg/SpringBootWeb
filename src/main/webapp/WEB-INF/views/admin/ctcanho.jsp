<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
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
<!-- Library for bootstrap -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- Library standand -->
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
								<form:form action="/admin/canho/suathongtin" method="post" modelAttribute="ch" id="js-edit-info">
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
										<td></td>
									</tr>
									<tr>
										<td>Chủ sở hữu</td>
										<td><form:input path="chuSoHuu.ho_ten"
												style="width: 50%" cssClass="form-control" id="js-name-info" readonly="true"/></td>
										<td><a href="/admin/thongtin/csh/${ch.chuSoHuu.ma_chu_so_huu}">Chi tiết</a></td>
									</tr>
									<tr>
										<td></td>
										<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalSuaThongTinCSH">Sửa</button></td>
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
			<div class="row mt-5 mb-5">
				<div class="col-sm-1"></div>
				<div class="col-sm-10 container border">
					<h2>Thông tin dịch vụ đã đăng kí</h2>
					<div class="row">
						<div class="container mt-3">
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
					
					
					<!--Start modal them dich vu -->
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
					<!--End modal them dich vu -->
					<!--Start modal sua thong tin chu so huu -->
					<div class="modal fade" id="exampleModalSuaThongTinCSH" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLongTitle">Thông tin chủ sở hữu</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
							<form:form action="/admin/canho/suathongtin" method="post" modelAttribute="ch">
							<table class="table table-striped mt-3">
								<thead>
									<tr>
										<th>Sửa thông tin căn hộ</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Mã căn hộ</td>
										<td><form:input path="ma_can_ho"
												style="width: 50%" cssClass="form-control" readonly="true" /></td>
										<td></td>
										
									</tr>
									<tr>
										<td>Mã chủ sở hữu</td>
										<td><form:input path="chuSoHuu.ma_chu_so_huu" id="js-idcsh"
												style="width: 50%" cssClass="form-control" readonly="true" /></td>
										<td></td>
										
									</tr>
									<tr>
										<td>Họ tên</td>
										<td><form:input path="chuSoHuu.ho_ten" style="width: 50%" id="js-ten"
												cssClass="form-control" /></td>
										<td><select class="form-select js-select-info" aria-label="Default select example">
										  <option selected value="${ch.chuSoHuu.ma_chu_so_huu}">${ch.chuSoHuu.ho_ten}</option>
										  <c:forEach var="i" items="${csh}">
											<option value="${i.ma_chu_so_huu}">${i.ho_ten}</option>
										  </c:forEach>
										  	<option value="delete">Xoá chủ sở hữu</option>
										</select>	</td>
									</tr>
									<tr>
										<td>Số điện thoại</td>
										<td><form:input path="chuSoHuu.sdt" style="width: 50%" id="js-sdt"
												cssClass="form-control" /></td>
										<td><select class="form-select js-select-info" aria-label="Default select example">
										  <option selected value="${ch.chuSoHuu.ma_chu_so_huu}">${ch.chuSoHuu.sdt}</option>
										  <c:forEach var="i" items="${csh}">
											<option value="${i.ma_chu_so_huu}">${i.sdt}</option>
										  </c:forEach>
										  	<option value="delete">Xoá chủ sở hữu</option>
										</select>	</td>
									</tr>
									<tr>
										<td>Căn cước công dân</td>
										<td><form:input path="chuSoHuu.cccd" style="width: 50%" id="js-cccd"
												cssClass="form-control" /></td>
										<td><select class="form-select js-select-info" aria-label="Default select example">
										  <option value="${ch.chuSoHuu.ma_chu_so_huu}" selected >${ch.chuSoHuu.cccd}</option>
										  <c:forEach var="i" items="${csh}">
											<option value="${i.ma_chu_so_huu}">${i.cccd}</option>
										  </c:forEach>
										  	<option value="delete">Xoá chủ sở hữu</option>
										</select>	</td>
									</tr>
									<tr>
										<td>Ngày sinh</td>
										<td><form:input path="chuSoHuu.ngay_sinh" style="width: 50%" id="js-ngaysinh"
												cssClass="form-control" /></td>
										<td></td>
										
									</tr>
									<tr>
										<td>Giới tính</td>
										<td><form:input path="chuSoHuu.phai" style="width: 50%" id="js-gioitinh"
												cssClass="form-control" /></td>
										<td></td>
									</tr>
									<tr>
										<td>Tên đăng nhập</td>
										<td><form:input path="chuSoHuu.dangNhap.ten_dang_nhap" id="js-tendangnhap"
												style="width: 50%" cssClass="form-control" readonly="true" /></td>
										<td></td>
									</tr>
									<tr>
										<td>Mật khẩu</td>
										<td><form:input path="chuSoHuu.dangNhap.mat_khau" id="js-matkhau"
												style="width: 50%" cssClass="form-control" /></td>
										<td></td>
									</tr>
								</tbody>
								
							</table>
								<div class="col text-center mb-3">
								<form:button type="submit" class="btn btn-primary">Cập nhật</form:button>
							</div>
							</form:form>
					      </div>
					      <div class="modal-footer">
					        <a href=""><button type="button" class="btn btn-primary">Xong</button></a>
					        
					      </div>
					    </div>
					  </div>
					</div>
					<!--End modal sua thong tin chu so huu -->
					
				</div>
			</div>
		</div>
		<!-- End of Main Content -->
		<!-- Footer -->
		<%@ include file="../layout/footer.jsp"%>
		<!-- End of Footer -->
	</div>
	<!-- End of Content Wrapper -->
	</div>
<script>
  
	var listcsh = '${csh}';
</script>
</body>
</html>