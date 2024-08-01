<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
    <!-- Custom fonts for this template-->
    <link href="../../../static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/assets/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Library bootstrap -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	
	<!-- add script in dangkidichvu -->
    <script src="../../../assets/js/dangkidichvu.js"></script>
	<base href="${ pageContext.servletContext.contextPath }/" />
</head>
<body>
    <!-- Page Wrapper -->
    <div id="wrapper">
		<!-- Sidebar -->
		<%@ include file="../layout/slidebar.jsp" %>
	    <!-- End of Sidebar -->

		
	    <!-- Content Wrapper -->
	    <div id="content-wrapper" class="d-flex flex-column">
	    	<!-- Topbar -->
				<%@ include file="../layout/head.jsp" %>
			<!-- End of Topbar -->
	    	
		    <!-- Main Content -->
		    <div id="content">
				<div class="card card-header-actions mb-4">
					<div class="card-header">
						Đăng kí dịch vụ
					</div>
					<div class="card-body px-0">
						<!-- Detail Service-->
						<table class="table">
							  <thead>
							    <tr>
							      <th scope="col">Tên dịch vụ:</th>
							      <th scope="col">Đơn giá:</th>
							      <th scope="col">Đơn vị:</th>
							      <th scope="col">Thuế:</th>
							      <th scope="col">Số lượng:</th>
							      
							    </tr>
							  </thead>
							  <tbody>
							  <c:forEach var="i" items="${tatcadichvu}">
							    <tr>
							      <th>${i.ten_dich_vu}</th>
							      <td>${i.don_gia}</td>
							      <td>${i.don_vi}</td>
							      <td>${i.vat}</td>
							      <td><input type="number" class="form-range js-count count-service" id="customRange" min="0" max="50" value="1"></td>
							   		<td><div class="form-check">
											<input class="form-check-input js-check count-service" type="checkbox" value="" id="flexCheckDefault">
											<label class="form-check-label" for="flexCheckDefault">
											  Chọn
											</label>
										</div></td>
							   	
							    </tr>
							  </c:forEach> 
							  </tbody>
							</table>
						<hr>
					</div>
				</div>		
				<div class="card mb-4">
					<div class="card-body p-0">
						<div class="card-header">Trạng thái</div>
						<!-- Dich vu da dang ki-->
						<div class="table-responsive table-billing-history ms-4">
							<table class="table mb-0">
								<thead>
									<tr>
										<th class="border-gray-200" scope="col">Tên dịch vụ</th>
										<th class="border-gray-200" scope="col">Đơn giá</th>
										<th class="border-gray-200" scope="col">Số lượng</th>
										<th class="border-gray-200" scope="col">Tổng</th>
									</tr>
								</thead>
								<tbody class="js-body-table">
									<c:forEach var="i" items="">
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="card-footer d-flex flex-row-reverse"><button type="button" class="btn btn-primary js-register">Đăng kí</button></div>
					</div>
				</div>  
		    </div>
		    <!-- End of Main Content -->
		    
		    <!-- Footer -->
		    <%@ include file="../layout/footer.jsp" %>
		    <!-- End of Footer -->
	        </div>
	    	<!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
</body>
</html>