<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">

      <title>Hoa don</title>

      <link href="../../../static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
      <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

      <link href="/assets/css/sb-admin-2.min.css" rel="stylesheet">

      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
      <div id="wrapper">
        <%@ include file="../layout/slidebar.jsp" %>
          <div id="content-wrapper" class="d-flex flex-column">
            <%@ include file="../layout/head.jsp" %>
              <div id="content" class="p-4">
                <h3 class="mb-0 mt-5">THANH TOÁN HOÁ ĐƠN</h3>
                <hr class="my-4" />
                <strong class="mb-0">Thông tin khách hàng:</strong>
                <p>Họ và tên: ${thongtin.ho_ten}</p>
                <p>Mã khách hàng: ${thongtin.ma_chu_so_huu}</p>
                <strong class="mb-0">Thông tin hoá đơn:</strong>
                <div class="card-body">
                  <div class="table">
                    <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
                      <div class="row">
                        <div class="col-sm-12">
                          <table class="table table-bordered dataTable table-hover js-table" id="dataTable" width="100%"
                            cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                            <thead>
                              <tr role="row">
                                <th class="sorting sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1"
                                  colspan="1" aria-sort="ascending"
                                  aria-label="Name: activate to sort column descending" style="width: 10px;">STT</th>
                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                  aria-label="Position: activate to sort column ascending" style="width: 150.111px;">Tên
                                  hoá đơn</th>
                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                  aria-label="Position: activate to sort column ascending" style="width: 150.111px;">Mã
                                  căn hộ</th>
                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                  aria-label="Office: activate to sort column ascending" style="width: 100px;">Ngày lập
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                  aria-label="Salary: activate to sort column ascending" style="width: 100px;">Người lập
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1"
                                  aria-label="Salary: activate to sort column ascending" style="width: 100px;">Tổng tiền
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="2"
                                  aria-label="Salary: activate to sort column ascending" style="width: 100px;"> </th>
                              </tr>
                            </thead>
                            <tbody>
                              <c:set var="count" value="1" scope="session" />
                              <c:forEach var="i" items="${danhSachHoaDon}">
                                <tr>
                                  <td class="sorting_1">${count}</td>
                                  <td>${i.tenHoaDon}</td>
                                  <td>${i.maCanHo.ma_can_ho}</td>
                                  <td>${i.ngay_tao}</td>
                                  <td>${i.nhanVien.ho_ten}</td>
                                  <td>${i.tien_thang}</td>
                                  <td>
                                    <button type="button" class="btn btn-primary btn_chitiethoadon"
                                      data-bs-toggle="modal" data-bs-target="#chitietModal"> Xem chi tiết</button>
                                    <div class="modal fade" id="chitietModal" tabindex="-1"
                                      aria-labelledby="exampleModalLabel" aria-hidden="true">
                                      <div class="modal-dialog modal-xl">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Chi tiết dịch vụ</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
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
                                              <tbody>
                                                <c:set var="countt" value="1" scope="session" />
                                                <c:forEach var="j" items="${i.chiTietDichVu}">
                                                  <tr>
                                                    <td class="sorting_1">${countt}</td>
                                                    <td>${j.tenDichVu}</td>
                                                    <td>${j.donGia}</td>
                                                    <td>${j.soLuong}</td>
                                                    <td>${j.vat}</td>
                                                    <td>${j.donVi}</td>
                                                    <td>${j.tong} VND</td>
                                                  </tr>
                                                  <c:set var="countt" value="${countt = countt + 1}" scope="session" />
                                                </c:forEach>
                                              </tbody>
                                              <tfoot>
                                                <tr>
                                                  <th scope="row">Tổng tiền</th>
                                                  <td colspan="6" class="table-active">${i.tien_thang} VND</td>
                                                </tr>
                                              </tfoot>
                                            </table>
                                          </div>
                                          <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                              data-bs-dismiss="modal">Close</button>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </td>
                                  <td>
                                    <button type="button" class="btn btn-primary btn_thanhtoan" data-bs-toggle="modal"
                                      data-bs-target="#thanhtoanModal" data-tenhoadon="${i.tenHoaDon}"
                                      data-canho="${i.maCanHo.ma_can_ho}">Thanh toán</button>
                                    <div class="modal fade" id="thanhtoanModal" tabindex="-1"
                                      aria-labelledby="exampleModalLabel" aria-hidden="true">
                                      <div class="modal-dialog">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Thanh toán</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                              aria-label="Close"></button>
                                          </div>
                                          <div class="modal-body">
                                            <h6 id="modebody_thanhtoan"></h6>
                                          </div>
                                          <div class="modal-footer">
                                            <!-- <form method="post" action="/thanhtoan/${i.ma_hoa_don}"> -->
                                            <button type="button" class="btn btn-secondary btn_xacnhan"
                                              data-bs-dismiss="modal" data-hoadon="${i.ma_hoa_don}"
                                              data-khachhang="${thongtin.ma_chu_so_huu}">Xác nhận</button>
                                            <!-- </form> -->
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </td>
                                </tr>
                                <c:set var="count" value="${count = count + 1}" scope="session" />
                              </c:forEach>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <hr class="my-4" />
          </div>
          <%@ include file="../layout/footer.jsp" %>
      </div>
      </div>

      <script type="text/javascript">
        var btn_thanhtoans = document.querySelectorAll('.btn_thanhtoan');
        btn_thanhtoans.forEach(function (btn_thanhtoan) {
          btn_thanhtoan.addEventListener('click', function () {
            $("#modebody_thanhtoan").html("Xác nhận thanh toán hóa đơn " + btn_thanhtoan.getAttribute('data-tenhoadon') + " của " + btn_thanhtoan.getAttribute('data-canho'));
          })
        })

        var btn_xacnhans = document.querySelectorAll('.btn_xacnhan');
        btn_xacnhans.forEach(function (btn_xacnhan) {
          btn_xacnhan.addEventListener('click', function Thanhtoan() {
            $.ajax({
              url: "/thanhtoan",
              type: "POST",
              data: {
                ma_hoa_don: btn_xacnhan.getAttribute('data-hoadon'),
                khachhang: btn_xacnhan.getAttribute('data-khachhang')
              },
              success: function Thanhtoan() {
                console.log(btn_xacnhan.getAttribute('data-hoadon'));
                alert('success');
                
              },
              error: function fail(){
                alert('error');
              }
            })
          })
        })
      </script>
      <!-- Button trigger modal -->


      <!-- Modal -->

    </body>

    </html>