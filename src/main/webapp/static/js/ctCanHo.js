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
	 const selectInfo = document.querySelector('.js-select-info');
	 const inputElement = document.querySelector('#js-input-id');

	 	selectInfo.addEventListener('change', (event) => {
			// set id input value
		   	inputElement.value = event.target.value;
			const url = "/canho/laythongtincsh"; // Assuming you want to send to the current page
	  		  const request = new XMLHttpRequest();
		      request.open("POST", url, true);
		      request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	
		      request.onreadystatechange = () => {
		        if (request.readyState === XMLHttpRequest.DONE) {
		          if (request.status === 200) {
					// set name input value
		            document.getElementById('js-name-info').value = request.response;
		          } else {
		            console.error('Request failed with status:', request.status);
		          }
		        }
		      };
	
		      request.send("idcsh="+event.target.value);
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

      const url = "/canho/themdichvu/"+macanho; // Assuming you want to send to the current page

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
	var modalCharge= document.querySelector('#remove-modal');
	var count = modalCharge.querySelector('.js-count');
	var buttonEdit = modalCharge.querySelectorAll('.js-button-fix');
	
	buttonEdit.forEach(button => {
		      button.addEventListener('click', handleEditButton);
		   });
	

   function handleEditButton(event) {
   	      const row = event.target.closest("tr");
   	      const idService = row.id;
   	      const countService = count.value;
   	      const params = "idService="+idService+"&countService="+countService;
			
   	      const url = "/canho/suadichvu/"+macanho; // Assuming you want to send to the current page
   	      const request = new XMLHttpRequest();
   	      request.open("POST", url, true);
   	      request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

   	      request.onreadystatechange = () => {
   	        if (request.readyState === XMLHttpRequest.DONE) {
   	          if (request.status === 200) {
   	            alert("Sua thanh cong");
   	          } else {
   	            console.error('Request failed with status:', request.status);
   	          }
   	        }
   	      };

   	      request.send(params);
   		}
		/*-----------------------------------------------------------------------------*/
	var buttonRemove = modalCharge.querySelectorAll('.js-button-remove');

	buttonRemove.forEach(button => {
				      button.addEventListener('click', handleRemoveButton);
				   });
	function handleRemoveButton(event) {
	   	      const row = event.target.closest("tr");
	   	      const idService = row.id;
	   	      const params = "idService="+idService;
				
	   	      const url = "/canho/xoadichvu/"+macanho; // Assuming you want to send to the current page

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