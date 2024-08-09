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
			<h2>CHỈNH SỬA THÔNG TIN</h2>
			${message}
			<form:form action="/account/edit" modelAttribute="form"
				enctype="multipart/form-data">
				<form:errors path="*" element="ul" cssClass="errors" />
				<div class="form-group">
					<label>Mã nhân viên</label>
					<form:input path="ma_nhan_vien" style="width: 50%" cssClass="form-control"
						readonly="true" />
				</div>
				<form:hidden path="password" cssClass="form-control" />
				<div class="form-group">
					<label>Họ và tên</label>
					<form:input path="ho_ten" style="width: 50%"
						cssClass="form-control" />
				</div>
				<div class="form-group">
					<label>Số điện thoại</label>
					<form:input path="sdt" style="width: 50%" cssClass="form-control" />
				</div>
				<div class="form-group">
					<label>Căn cước công dân</label>
					<form:input path="cccd" style="width: 50%" cssClass="form-control" />
				</div>
				<div class="form-group">
					<label>Ngày sinh</label>
					<form:input path="ngay_sinh" style="width: 50%" cssClass="form-control" />
				</div>
				<div class="form-group">
					<label>Giới tính</label>
					<form:input path="Phai" style="width: 50%" cssClass="form-control" />
				</div>
				<div class="form-group">
					<label>Mã phòng ban</label>
					<form:input path="phongBan.ma_phong_ban" style="width: 50%" cssClass="form-control" />
				</div>
				<div class="form-group">
					<button class="btn btn-primary" onclick="location.href='admin/chinhsuanv'">Cập nhật</button>
				</div>
			</form:form>
			<!-- End of Main Content -->
			<!-- Footer -->
			<%@ include file="../layout_admin/footer.jsp"%>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
	</div>
</body>
</html>