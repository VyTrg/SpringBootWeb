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
		<div class="col-sm-1"></div>

		<div class="col-sm-10 border">
			<div class="col-sm-4"></div>
			<div class="col-sm-4 container">
				<h2>Thông tin căn hộ</h2>
			</div>
			<div class="col-sm-4"></div>
			<div class="row">
				<div class="container mt-3">
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
							</tr>
						</thead>
						<tbody>
							<c:forEach var="p" items="${list}">
								<tr>
									<td>${p.ma_can_ho}</td>
									<td>${p.dien_tich}</td>
									<td>${p.chuSoHuu.ma_chu_so_huu}</td>
									<td>${p.chuSoHuu.ho_ten}</td>
									<td>${p.khu}</td>
									<td>${p.tang}</td>
									<td><a href="">Chi tiết</a></td>
								</tr>
							</c:forEach>
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