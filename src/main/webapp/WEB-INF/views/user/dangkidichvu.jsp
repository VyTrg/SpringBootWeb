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
	
    
    <link href="../../../static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    
    <link href="/assets/css/sb-admin-2.min.css" rel="stylesheet">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    
</head>
<body>
	
	
	<!-- Page Wrapper -->
    <div id="wrapper">
		<!-- Sidebar -->
		<%@ include file="../layout/slidebar.jsp" %>
	    <div id="content-wrapper" class="d-flex flex-column">
	    	<!-- Topbar -->
				<%@ include file="../layout/head.jsp" %>
			<!-- End of Topbar -->
	    	
		    <!-- Main Content -->
		    <div id="content">
				<div class="card card-header-actions mb-4">
					<div class="card-header" >
						Đăng kí dịch vụ
					</div>
					<div class="table">
                        <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
                            <div class="row">
                                <div class="col-sm-12">
                                    <table class="table table-bordered dataTable table-hover js-table" id="dataTable" width="100%" cellspacing="0" role="grid"
                                        aria-describedby="dataTable_info" style="width: 100%;">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending"
                                                    aria-label="Name: activate to sort column descending" style="width: 10px;" >STT</th>
                                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                                    aria-label="Position: activate to sort column ascending" style="width: 150.111px;" >Tên dịch vụ</th>
                                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                                    aria-label="Position: activate to sort column ascending" style="width: 150.111px;">Đơn giá</th>
                                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                                    aria-label="Office: activate to sort column ascending" style="width: 100px;">Thuế</th>
                                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                                    aria-label="Salary: activate to sort column ascending" style="width: 100px;"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
											<c:set var="countt" value="1" scope="session" />
											<c:forEach var="dv" items="${dichvu}">
													<tr>
														<th class="sorting_1">${countt}</th>
														<td scope="row">${dv.ten_dich_vu}</td>
														<td>${dv.don_gia}</td>
														<td>${dv.vat}</td>
														<td>
															<button type="button" class="btn btn-light btn-submit"  data-bs-toggle="modal" data-bs-target="#dkdvModal" data-test="${dv.ten_dich_vu}">Chọn</button>
															<div class="modal fade" id="dkdvModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
																<div class="modal-dialog">
																  <div class="modal-content">
																	<div class="modal-header">
																	  <h5 class="modal-title" id="exampleModalLabel">Đăng kí dịch vụ</h5>
																	  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
																	</div>
																	<div class="modal-body">
																		<h6 id="modal_body"></h6>
																	</div>
																	<div class="modal-footer">
																	  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
																	  <button type="button" class="btn btn-primary">Xác nhận</button>
																	</div>
																  </div>
																</div>
															  </div>
														</td>
													</tr>
											<c:set var="countt" value="${countt = countt + 1}" scope="session" />
											</c:forEach>
                                        </tbody>
                                    </table>
					</div>
				</div>		
				<div class="card mb-4">
					<div class="card-body p-0">
						<div class="card-header">Trạng thái</div>
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

	<script type="text/javascript">
        //document.addEventListener("DOMContentLoaded", function(){
			var btns = document.querySelectorAll('.btn-submit');
			btns.forEach(function(btn){
				btn.addEventListener('click', function(){
				$("#modal_body").html(btn.getAttribute('data-test'));
			})
			})
		//});
    </script>
</body>
</html>