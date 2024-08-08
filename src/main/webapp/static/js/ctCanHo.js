document.addEventListener('DOMContentLoaded', () => {
	
	var canho = document.querySelector('.js-table-home');
	var macanho = canho.querySelector('#js-home').value;
	
	// handle edit form 
	 const suathongtin = document.getElementById('js-edit-info');
	 suathongtin.addEventListener('submit', (event) => {
	// Prevent default form submission   
	   alert('Đã sửa thông tin!');
	 });
	 
	 // handle option edit csh
	 const selectInfo = document.querySelectorAll('.js-select-info');
	 const inputElement = document.querySelector('#js-input-id');
	 
	 selectInfo.forEach(select => {
	 	select.addEventListener('change', (event) => {
			// set id input value
			if (event.target.value === 'delete') 
				inputElement.value = "";
			else 
		   	  inputElement.value = event.target.value;
			  const url = "/admin/canho/laythongtincsh"; // Assuming you want to send to the current page
	  		  const request = new XMLHttpRequest();
		      request.open("POST", url, true);
		      request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	
		      request.onreadystatechange = () => {
		        if (request.readyState === XMLHttpRequest.DONE) {
		          if (request.status === 200) {
					// set name input value
					if (request.response == 'khongcothongtin') {
						document.querySelector("#js-idcsh").value = "";
						document.querySelector("#js-ten").value = "";
						document.querySelector("#js-sdt").value = "";
						document.querySelector("#js-cccd").value = "";
						document.querySelector("#js-ngaysinh").value = "";
						document.querySelector("#js-gioitinh").value = "";
						document.querySelector("#js-tendangnhap").value = "";
						document.querySelector("#js-matkhau").value = "";						
					}
		            else 
						//document.getElementById('js-name-info').value = request.response;
						var ttcsh = JSON.parse(request.response)
						document.querySelector("#js-idcsh").value = ttcsh.ma_chu_so_huu;
						document.querySelector("#js-ten").value = ttcsh.ho_ten;
						document.querySelector("#js-sdt").value = ttcsh.sdt;
						document.querySelector("#js-cccd").value = ttcsh.cccd;
						document.querySelector("#js-ngaysinh").value = ttcsh.ngay_sinh;
						document.querySelector("#js-gioitinh").value = ttcsh.phai;
						document.querySelector("#js-tendangnhap").value = ttcsh.dangNhap.ten_dang_nhap;
						document.querySelector("#js-matkhau").value = ttcsh.dangNhap.mat_khau;
		          } else {
		            console.error('Request failed with status:', request.status);
		          }
		        }
		      };
	
		      request.send("idcsh="+event.target.value);
		});
		
	 });
	 
	 /*-------------------------------------------------------------------------------*/

	var modalDangKi = document.querySelector('#register-modal');
	var buttonRegister = document.querySelectorAll('.js-button-add');
	
	buttonRegister.forEach(button => {
	      button.addEventListener('click', handleRegisterButton);
	   });
	
    function handleRegisterButton(event) {
      const row = event.target.closest("tr");

      const idService = row.id;
      const countService = row.querySelector('.js-count').value;
      const params = "idService="+idService+"&countService="+countService;

	  const url = "/admin/canho/themdichvu/"+macanho; // Assuming you want to send to the current page
		
      const request = new XMLHttpRequest();
      request.open("POST", url, true);
      request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

      request.onreadystatechange = () => {
        if (request.readyState === XMLHttpRequest.DONE) {
          if (request.status === 200) {
            alert("Them thanh cong");
          } else {
            console.error('Request failed with status:', request.status);
          }
        }
      };

      request.send(params);
	  
	  var index = row.rowIndex;
	  modalDangKi.deleteRow(index-1);
	}
	
	/*-----------------------------------------------------------------------------*/
	// click button Remove

	/*-----------------------------------------------------------------------------*/
	var modalCharge= document.querySelector('#remove-modal');
	var buttonRemove = modalCharge.querySelectorAll('.js-button-remove');

	buttonRemove.forEach(button => {
				      button.addEventListener('click', handleRemoveButton);
				   });
	function handleRemoveButton(event) {
	   	      const row = event.target.closest("tr");
			  console.log(row);
	   	      const idService = row.id;
	   	      const params = "idService="+idService;
				
	   	      const url = "/admin/canho/xoadichvu/"+macanho; // Assuming you want to send to the current page

	   	      const request = new XMLHttpRequest();
	   	      request.open("POST", url, true);
	   	      request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

	   	      request.onreadystatechange = () => {
	   	        if (request.readyState === XMLHttpRequest.DONE) {
	   	          if (request.status === 200) {
	   	            alert("Xoa thanh cong");
	   	          } else {
	   	            alert("Xoa khong thanh cong: \n"+request.status);
	   	          }
	   	        }
	   	      };

	   	      request.send(params);
	   		}
});