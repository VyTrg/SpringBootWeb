<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri= %>
 <%-- <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
 --%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../../../assets/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- Page Wrapper -->
    <div id="wrapper">
		<!-- Sidebar -->
		<%@ include file="./layout/slidebar.jsp" %>
	    <!-- End of Sidebar -->
	    
		
	    <!-- Content Wrapper -->
	    <div id="content-wrapper" class="d-flex flex-column">
	    	<!-- Topbar -->
			<%@ include file="./layout/header.jsp" %>
			<!-- End of Topbar -->
	    	
		    <!-- Main Content -->
		    <div id="content">
				<div _ngcontent-riq-c12="" class="card mb-4">
					<div class="card-header">DataTable Example</div>
					<div class="card-body"><sb-ng-bootstrap-table>
							<form novalidate="" class="ng-untouched ng-pristine ng-valid">
								<div class="form-group form-inline">Full text search: <input
										class="form-control ml-2 ng-untouched ng-pristine ng-valid" name="searchTerm"
										type="text"><!----></div>
								<table class="table table-striped">
									<thead>
										<tr>
											<th sbsortable="name" scope="col"><span>Mã căn hộ</span><!----></th>
											<th sbsortable="area" scope="col"><span>Chủ sở hữu</span><!----></th>
											<th sbsortable="population" scope="col"><span>Diện tích</span><!----></th>
											<th sbsortable="population" scope="col"><span>Khu</span><!----></th>
											<th sbsortable="population" scope="col"><span>Tầng</span><!----></th>
										</tr>
									</thead>
									<tbody><!---->
										
										<tr>
										<th scope="row"></th>
										<td><ngb-highlight><!----><!----><!----></ngb-highlight></td>
										<td><ngb-highlight><!----><!----><!----></ngb-highlight></td>
										<td><ngb-highlight><!----><!----><!----></ngb-highlight></td>
										<td><ngb-highlight><!----><!----><!----></ngb-highlight></td>
										</tr>
									</tbody>
								</table>
								<div class="d-flex justify-content-between p-2"><ngb-pagination
									 role="navigation"><!----><!----><!----><!----><!----><!---->
										<ul class="pagination"><!----><!---->
											<li class="page-item disabled"><a aria-label="Previous" class="page-link" href=""
													tabindex="-1" aria-disabled="true"><!----><span aria-hidden="true">«</span></a></li>
											<!---->
											<li class="page-item active" aria-current="page"><!----><!----><a class="page-link"
													href=""><!----> 1 <!----><span class="sr-only">(current)</span><!----></a></li>
											<li class="page-item"><!----><!----><a class="page-link" href=""><!----> 2
													<!----><!----></a></li>
											<li class="page-item"><!----><!----><a class="page-link" href=""><!----> 3
													<!----><!----></a></li><!---->
											<li class="page-item"><a aria-label="Next" class="page-link" href=""><!----><span
														aria-hidden="true">»</span></a></li><!---->
										</ul>
									</ngb-pagination><select
										class="custom-select ng-untouched ng-pristine ng-valid" name="pageSize" style="width: auto">
										<option value="0: 2">2 items per page</option>
										<option value="1: 4">4 items per page</option>
										<option value="2: 6">6 items per page</option>
									</select></div>
							</form>
						</sb-ng-bootstrap-table></div>
				</div>
		    </div>
		    <!-- End of Main Content -->
		    
		    <!-- Footer -->
		    <%@ include file="./layout/footer.jsp" %>
		    <!-- End of Footer -->
	        </div>
	    	<!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
</body>
</html>