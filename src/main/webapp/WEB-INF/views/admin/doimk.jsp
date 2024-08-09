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
				<div class="col-sm-11">
					<h2>ĐỔI MẬT KHẨU</h2>
					<h4 style="color: red;">${message}</h4>
					<form action="/admin/doimk" method="post">
						<div class="form-group">
							<label>Tên đăng nhập</label> <input name="id" style="width: 50%"
								class="form-control">
						</div>
						<div class="form-group">
							<label>Mật khẩu hiện tại</label> <input name="pw"
								style="width: 50%" class="form-control">
						</div>
						<div class="form-group">
							<label>Mật khẩu mới</label> <input name="pw1" style="width: 50%"
								class="form-control">
						</div>
						<div class="form-group">
							<label>Nhập lại mật khẩu mới</label> <input name="pw2"
								style="width: 50%" class="form-control">
						</div>

						<div class="form-group">
							<button class="btn btn-primary">Đổi mật
								khẩu</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- End of Main Content -->
			<!-- Footer -->
			<%@ include file="../layout_admin/footer.jsp"%>
			<!-- End of Footer -->
		
		<!-- End of Content Wrapper -->
	</div>
</body>
</html>