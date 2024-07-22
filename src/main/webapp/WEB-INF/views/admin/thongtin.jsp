<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<title>Thông tin nhân viên</title>
<link rel="stylesheet" type="../../static/css/style.css" href="">
</head>
﻿
<body>
	<div class="container-fluid bg-black text-white">QuyCoding</div>
	<div class="row">
		<div class="col-sm-1"></div>

		<div class="col-sm-2">
			<div class="card">
				<img src="../../static/images/avatar.png" alt="" class="">
				<div class="card-body">
					<h4 class="card-title">QuyCoding</h4>
				</div>
			</div>
		</div>

		<div class="col-sm-8 border">
			<div>
				<h2 class="text-center">Thông tin nhân viên</h2>
			</div>
			<div class="row">
				<div class="container mt-3">
					<h4>Thông tin tài khoản</h4>
					<table class="table table-striped">
						<thead>
						</thead>
						<tbody>
							<tr>
								<td>Tên đăng nhập</td>
								<td><form:input path="nv.dangNhap.ten_dang_nhap"
										style="width: 50%" cssClass="form-control" readonly="true"/></td>
							</tr>
							<tr>
								<td>Mật khẩu</td>
								<td><form:input path="nv.dangNhap.mat_khau"
										style="width: 50%" cssClass="form-control"/></td>
							</tr>
						</tbody>
					</table>

					<h4>Thông tin cá nhân</h4>
					<table class="table table-striped">
						<thead>
						</thead>
						<tbody>
							<tr>
								<td>Mã nhân viên</td>
								<td><form:input path="nv.ma_nhan_vien" style="width: 50%"
										cssClass="form-control" readonly="true"/></td>
							</tr>
							<tr>
								<td>Họ và tên</td>
								<td><form:input path="nv.ho_ten" style="width: 50%"
										cssClass="form-control"/></td>
							</tr>
							<tr>
								<td>Số điện thoại</td>
								<td><form:input path="nv.sdt" style="width: 50%"
										cssClass="form-control"/></td>
							<tr>
								<td>Căn cước công dân</td>
								<td><form:input path="nv.cccd" style="width: 50%"
										cssClass="form-control"/></td>
							</tr>
							<tr>
								<td>Ngày sinh</td>
								<td><form:input path="nv.ngay_sinh" style="width: 50%"
										cssClass="form-control"/></td>
							</tr>
							<tr>
								<td>Giới tính</td>
								<td><form:input path="nv.phai" style="width: 50%"
										cssClass="form-control"/></td>
							</tr>
							<tr>
								<td>Mã phòng ban</td>
								<td><form:input path="nv.phongBan.ma_phong_ban"
										style="width: 50%" cssClass="form-control"/></td>
							</tr>
						</tbody>
					</table>
					<div class="col text-center mb-3">
						<button class="btn btn-primary">Cập nhật</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="col-sm-1"></div>

</body>
﻿
</html>