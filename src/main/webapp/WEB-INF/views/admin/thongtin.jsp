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
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
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
						<h2 class="text-center">Thông tin nhân viên</h2>
						<div class="container mt-3">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>Mã nhân viên</th>
										<th>Họ và tên</th>
										<th>Số điện thoại</th>
										<th>Phòng ban</th>
										<th>Tên đăng nhập</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="p" items="${nv}">
										<tr>
											<td>${p.ma_nhan_vien}</td>
											<td>${p.ho_ten}</td>
											<td>${p.sdt}</td>
											<td>${p.phongBan.ma_phong_ban}</td>
											<td>${p.dangNhap.ten_dang_nhap}</td>
											<td><a href="/admin/nv/${p.ma_nhan_vien}">Chi
													tiết</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-1"></div>

			<div class="row">
				<div class="col-sm-1"></div>

				<div class="col-sm-10 border mt-4">
					<div class="row">
						<h2 class="text-center">Thông tin chủ sở hữu</h2>
						<div class="container mt-3">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>Mã chủ sở hữu</th>
										<th>Họ và tên</th>
										<th>Số điện thoại</th>
										<th>Danh sách căn hộ</th>
										<th>Tên đăng nhập</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="p" items="${csh}">
										<tr>
											<td>${p.ma_chu_so_huu}</td>
											<td>${p.ho_ten}</td>
											<td>${p.sdt}</td>
											<td><c:forEach items="${ p.ds_can_ho }" var="canho">
													<li>${canho.ma_can_ho}</li>
												</c:forEach></td>
											<td>${p.dangNhap.ten_dang_nhap}</td>
											<td><a href="/admin/csh/${p.ma_chu_so_huu}">Chi
													tiết</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-1"></div>
			<!-- End of Main Content -->
			<!-- Footer -->
			<%@ include file="../layout_admin/footer.jsp"%>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
	</div>
</body>
</html>