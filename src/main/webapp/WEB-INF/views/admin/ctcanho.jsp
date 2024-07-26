<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<title>Thông tin căn hộ</title>
</head>
﻿
<body>

	<div class="row">
		<div class="col-sm-6 container border">
			<h2 class="text-center">Thông tin căn hộ</h2>
			<div class="row">
				<div class="container mt-3">
					<table class="table table-striped">
						<thead>
						</thead>
						<tbody>
							<tr>
								<td>Mã căn hộ</td>
								<td><form:input path="ch.ma_can_ho" style="width: 50%"
										cssClass="form-control" readonly="true"/></td>
							</tr>
							<tr>
								<td>Diện tích</td>
								<td><form:input path="ch.dien_tich" style="width: 50%"
										cssClass="form-control" /></td>
							</tr>
							<tr>
								<td>Mã chủ sở hữu</td>
								<td><form:input path="ch.chuSoHuu.ma_chu_so_huu"
										style="width: 50%" cssClass="form-control"/></td>
							</tr>
							<tr>
								<td>Chủ sở hữu</td>
								<td><form:input path="ch.chuSoHuu.ho_ten"
										style="width: 50%" cssClass="form-control"/></td>
							</tr>
							<tr>
								<td>Khu</td>
								<td><form:input path="ch.khu" style="width: 50%"
										cssClass="form-control"/></td>
							</tr>
							<tr>
								<td>Tầng</td>
								<td><form:input path="ch.tang" style="width: 50%"
										cssClass="form-control" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="col-sm-6 container border">
			<h2 class="text-center">Thông tin dịch vụ</h2>
			<div class="row">
				<div class="container mt-3">
					<table class="table table-striped">
						<thead>
						</thead>
						<tbody>
							<tr>
								<td>Mã dịch vụ</td>
								<td><form:input path="ch.ma_can_ho" style="width: 50%"
										cssClass="form-control" readonly="true" /></td>
							</tr>
							<tr>
								<td>Tên dịch vụ</td>
								<td><form:input path="ch.dien_tich" style="width: 50%"
										cssClass="form-control" /></td>
							</tr>
							<tr>
								<td>Thuế VAT</td>
								<td><form:input path="ch.chuSoHuu.ma_chu_so_huu"
										style="width: 50%" cssClass="form-control" readonly="true" /></td>
							</tr>
							<tr>
								<td>Đơn giá</td>
								<td><form:input path="ch.chuSoHuu.ho_ten"
										style="width: 50%" cssClass="form-control" /></td>
							</tr>
							<tr>
								<td>Đơn vị</td>
								<td><form:input path="ch.khu" style="width: 50%"
										cssClass="form-control" readonly="true" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>

	<div class="col-sm-1"></div>

</body>
﻿
</html>