<%@ page language="java" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="vn">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  </head>
  <body>
	<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">Đăng nhập</h5>
                    <form action="login" method="post" object="dang_nhap" id="loginForm">
                        <div class="mb-3">
                            <!-- name: data after submit, value: data send -->
                            <label for="username" class="form-label">Tên đăng nhập</label>
                            <input type="text" class="form-control" id="ten_dang_nhap" placeholder="Nhập tên đăng nhập" name="ten_dang_nhap">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Mật khẩu</label>
                            <input type="password" class="form-control" id="mat_khau" placeholder="Nhập mật khẩu" name="mat_khau" >
                        </div>
                        <!-- <select class="role-select mb-3" arial-label="Default select example" id="quyen" name="quyen">
                        <option selected>Chọn quyền</option>
                        <option value="NV">Nhân viên</option>
                        <option value="CSH">Cư dân</option>
                        </select> -->
                        <div class="d-grid">	
                         <button id="btn_submit" type="submit" class="btn btn-primary" >Đăng nhập</button>
                        </div>
                    </form>
                    </div>
                    </div>
                    <span style="display: block" class="password__text--error" >${message}</span>
                </div>
            </div>
        </div>

    <!-- <button  id="btn_open" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#errorModal">
        Launch demo modal
      </button>
    modal dialog -->
    <!-- <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="errorModalLabel">Thông báo</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <span id="errorMessage"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>   -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <!-- Popper.js (required for Bootstrap) -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <!-- <script>
       var btn_open = document.getElementById("btn_open");
       var modal = document.getElementById("errorModal");
       btn_open.addEventListener('click', function(){
            modal.classList.add('show');
       });
    </script> -->
    <style>
        .password__text--error{
            color: red;
        }
    </style>
  </body>
</html>