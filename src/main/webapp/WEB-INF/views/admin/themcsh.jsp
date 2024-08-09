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
				<div class="col-sm-10 mt-4">
					<form:form action="/admin/themcsh" modelAttribute="csh"
						enctype="multipart/form-data">
						<h2>Thêm chủ sở hữu</h2>
						<h4 style="color: red;">${message}</h4>
						<div class="container mt-3">
							<h4>Thông tin cá nhân</h4>
							<div class="row mt-3 mb-3">
								<div class="col-md-6">
									<div class="form-group">
										<label>Mã chủ sở hữu</label>
										<form:input path="ma_chu_so_huu" class="form-control" />
										<form:errors path="ma_chu_so_huu" cssClass="text-danger" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Họ tên</label>
										<form:input path="ho_ten" class="form-control" />
										<form:errors path="ho_ten" cssClass="text-danger" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Số điện thoại</label>
										<form:input path="sdt" class="form-control" />
										<form:errors path="sdt" cssClass="text-danger" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Căn cước công dân</label>
										<form:input path="cccd" class="form-control" />
										<form:errors path="cccd" cssClass="text-danger" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Ngày sinh</label>
										<form:input path="ngay_sinh" type="date" class="form-control" />
										<form:errors path="ngay_sinh" cssClass="text-danger" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Giới tính</label>
										<div style="width: 50%">
											<div class="form-check">
												<form:radiobutton path="phai" value="Nam"
													cssClass="form-check-input" />
												<form:label path="phai" value="Nam"
													cssClass="form-check-label">Nam</form:label>
											</div>
											<div class="form-check">
												<form:radiobutton path="phai" value="Nu"
													cssClass="form-check-input" />
												<form:label path="phai" value="Nu"
													cssClass="form-check-label">Nữ</form:label>
											</div>
										</div>
										<form:errors path="phai" cssClass="text-danger" />
									</div>
								</div>
							</div>

							<h4>Thông tin tài khoản</h4>
							<div class="row mt-3 mb-3">
								<div class="form-group">
									<label>Tên đăng nhập</label>
									<form:input path="dangNhap.ten_dang_nhap" class="form-control"
										style="width: 50%" />
									<form:errors path="dangNhap.ten_dang_nhap"
										cssClass="text-danger" />
								</div>
								<div class="form-group">
									<label>Mật khẩu</label>
									<form:input path="dangNhap.mat_khau" class="form-control"
										style="width: 50%" />
									<form:errors path="dangNhap.mat_khau" cssClass="text-danger" />
								</div>
								<div class="form-group">
									<label>Mã quyền</label>
									<form:input path="dangNhap.Quyen.ma_quyen" class="form-control"
										style="width: 50%" value="CSH" readonly="true" />
									<form:errors path="dangNhap.Quyen.ma_quyen"
										cssClass="text-danger" />
								</div>
							</div>

							<div class="row">
								<div class="col text-center mb-3">
									<button class="btn btn-primary">Thêm</button>
								</div>
							</div>
						</div>
					</form:form>
				</div>
				<div class="col-sm-1"></div>
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