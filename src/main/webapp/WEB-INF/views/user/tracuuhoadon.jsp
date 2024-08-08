<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="">
            <meta name="author" content="">

            <title>Tra cứu hóa đơn</title>

            <!-- Custom fonts for this template-->
            <link href="../../../static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
            <link
                href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
                rel="stylesheet">

            <link href="/assets/css/sb-admin-2.min.css" rel="stylesheet">

            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                crossorigin="anonymous">
            <script src="https://code.jquery.com/jquery-3.7.1.min.js"
                integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
                crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
                crossorigin="anonymous"></script>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
            </script>
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
                            <div id="content" class="p-4">
                                <h3 class="mb-0 mt-5">TRA CỨU HOÁ ĐƠN</h3>
                                <!-- <p>Thông tin hoá đơn</p> -->
                                <hr class="my-4" />
                                <strong class="mb-0">Thông tin khách hàng:</strong>
                                <p>Họ và tên: ${thongtin.ho_ten}</p>
                                <p>Mã khách hàng: ${thongTinHoaDon.get(0).maKhachHang}</p>

                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <div class="row">
                                            <div class="col-lg-6 col-sm-12">
                                                <h6 class="m-0 font-weight-bold text-primary">Thông tin hoá đơn:</h6>
                                            </div>
                                            <div class="col-lg-6 col-sm-12"><label>Search:<input type="search"
                                                        class="form-control-sm js-search" placeholder="YYYY/MM/DD"
                                                        aria-controls="dataTable"></label></div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="table">
                                            <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <table
                                                            class="table table-bordered dataTable table-hover js-table"
                                                            id="dataTable" width="100%" cellspacing="0" role="grid"
                                                            aria-describedby="dataTable_info" style="width: 100%;">
                                                            <thead>
                                                                <tr role="row">
                                                                    <th class="sorting sorting_asc" tabindex="0"
                                                                        aria-controls="dataTable" rowspan="1"
                                                                        colspan="1" aria-sort="ascending"
                                                                        aria-label="Name: activate to sort column descending"
                                                                        style="width: 10px;">STT</th>
                                                                    <th class="sorting" tabindex="0"
                                                                        aria-controls="dataTable" rowspan="1"
                                                                        colspan="1"
                                                                        aria-label="Position: activate to sort column ascending"
                                                                        style="width: 150.111px;">Tên hoá đơn</th>
                                                                    <th class="sorting" tabindex="0"
                                                                        aria-controls="dataTable" rowspan="1"
                                                                        colspan="1"
                                                                        aria-label="Position: activate to sort column ascending"
                                                                        style="width: 150.111px;">Mã căn hộ</th>
                                                                    <th class="sorting" tabindex="0"
                                                                        aria-controls="dataTable" rowspan="1"
                                                                        colspan="1"
                                                                        aria-label="Office: activate to sort column ascending"
                                                                        style="width: 100px;">Nhân viên</th>
                                                                    <th class="sorting" tabindex="0"
                                                                        aria-controls="dataTable" rowspan="1"
                                                                        colspan="1"
                                                                        aria-label="Age: activate to sort column ascending"
                                                                        style="width: 150px;">Ngày đóng</th>
                                                                    <th class="sorting" tabindex="0"
                                                                        aria-controls="dataTable" rowspan="1"
                                                                        colspan="1"
                                                                        aria-label="Start date: activate to sort column ascending"
                                                                        style="width: 150px;">Ngày lập</th>
                                                                    <th class="sorting" tabindex="0"
                                                                        aria-controls="dataTable" rowspan="1"
                                                                        colspan="1"
                                                                        aria-label="Salary: activate to sort column ascending"
                                                                        style="width: 100px;">Tổng tiền</th> 
                                                                    <th class="sorting" tabindex="0"
                                                                        aria-controls="dataTable" rowspan="1"
                                                                        colspan="1"
                                                                        aria-label="Salary: activate to sort column ascending"
                                                                        style="width: 100px;">Chi tiết</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <c:set var="count" value="1" scope="session" />
                                                                <c:forEach var="i" items="${danhSachHoaDon}">

                                                                    <tr class="odd">
                                                                        <td class="sorting_1">${count}</td>
                                                                        <td>${i.tenHoaDon}</td>
                                                                        <td>${i.maCanHo.ma_can_ho}</td>
                                                                        <td>${i.nhanVien.ho_ten}</td>
                                                                        <td>${i.ngay_tao}</td>
                                                                        <td>${i.ngay_dong_tien}</td>
                                                                        <td><fmt:formatNumber value="${i.tien_thang}" type="number"/> VND</td>
                                                                        <td>
                                                                            <button type="button"
                                                                                class="btn btn-primary btn_chitiethoadon"
                                                                                data-bs-toggle="modal"
                                                                                data-bs-target="#chitietModal-${fn:trim(i.ma_hoa_don)}"
                                                                                data-chitiet="${i.chiTietDichVu}">Xem
                                                                                chi tiết</button>
                                                                            <div class="modal fade" id="chitietModal-${fn:trim(i.ma_hoa_don)}"
                                                                                tabindex="-1"
                                                                                aria-labelledby="exampleModalLabel"
                                                                                aria-hidden="true">
                                                                                <div class="modal-dialog modal-xl">
                                                                                    <div class="modal-content">
                                                                                        <div class="modal-header">
                                                                                            <h5 class="modal-title"
                                                                                                id="exampleModalLabel">
                                                                                                Chi tiết dịch vụ</h5>
                                                                                            <button type="button"
                                                                                                class="btn-close"
                                                                                                data-bs-dismiss="modal"
                                                                                                aria-label="Close"></button>
                                                                                        </div>
                                                                                        <div class="modal-body">
                                                                                            <table class="table" id="chitietdichvu">
                                                                                                <thead>
                                                                                                  <tr>
                                                                                                    <th scope="col">Stt</th>
                                                                                                    <th scope="col">Tên dịch vụ</th>
                                                                                                    <th scope="col">Đơn giá</th>
                                                                                                    <th scope="col">Số lượng</th>
                                                                                                    <th scope="col">Thuế</th>
                                                                                                    <th scope="col">Đơn vị</th>
                                                                                                    <th scope="col">Thành tiền</th>
                                                                                                  </tr>
                                                                                                </thead>
                                                                                                <tbody id="table_body">
                                                                                                  <c:set var="countt" value="1" scope="session" />
                                                                                                  <c:forEach var="chitiet" items="${i.chitietdichvu}">
                                                                                                    <tr>
                                                                                                      <td class="sorting_1">${countt}</td>
                                                                                                      <td>${chitiet.dich_vu.ten_dich_vu}</td>
                                                                                                      <td>${chitiet.dich_vu.don_gia}</td>
                                                                                                      <td>${chitiet.so_luong}</td>
                                                                                                      <td><fmt:formatNumber value="${chitiet.dich_vu.vat/100.0}" type="percent" maxIntegerDigits="5"/></td>
                                                                                                      <td>${chitiet.dich_vu.don_vi}</td>
                                                                                                      <td class="text-end">
                                                                                                        <fmt:formatNumber value="${chitiet.dich_vu.don_gia * chitiet.so_luong * (100 +
                                                                                                        chitiet.dich_vu.vat) / 100}" type="number"/> VND</td>
                                                                                                    </tr>
                                                                                                    <c:set var="countt" value="${countt = countt + 1}"
                                                                                                      scope="session" />
                                                                                                  </c:forEach>
                                                                                                </tbody>
                                                                                                <tfoot>
                                                                                                  <tr>
                                                                                                    <th scope="row">Tổng tiền</th>
                                                                                                    <td colspan="6" class="table-active text-end"><fmt:formatNumber value="${i.tien_thang}" type="number"/> VND</td>
                                                                                                    <!-- <input type="hidden" name="chitiet" id="chitiet"
                                                                                                      value="${i.tien_thang}"> -->
                                                                                                  </tr>
                                                                                                </tfoot>
                                                                                              </table>
                                                                                            </form>
                                                                                        </div>
                                                                                        <div class="modal-footer">
                                                                                            <button type="button"
                                                                                                class="btn btn-secondary"
                                                                                                data-bs-dismiss="modal">Close</button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>


                                                                    <c:set var="count" value="${count = count + 1}"
                                                                        scope="session" />
                                                                </c:forEach>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End of Main Content -->


                            </div>
                            <!-- End of Content Wrapper -->
                            <!-- Footer -->
                            <%@ include file="../layout/footer.jsp" %>
                                <!-- End of Footer -->
                    </div>
                    <!-- End of Page Wrapper -->
        </body>

        </html>