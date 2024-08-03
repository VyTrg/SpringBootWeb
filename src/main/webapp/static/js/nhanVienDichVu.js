addEventListener("DOMContentLoaded", (event) => {
	var dichVuModal = document.querySelector('.js-service-modal');
	var buttonEdit = dichVuModal.querySelectorAll('.js-button-edit');
	
	const addForm = document.getElementById('js-add-form');
		 addForm.addEventListener('submit', (event) => {
		// Prevent default form submission   
		   alert('Đã thêm!');
		 });
	 
	buttonEdit.forEach(button => {
		      button.addEventListener('click', handleEditButton);
		   });
		   
	function handleEditButton(event) {
		// Get the row element based on the clicked element
		const row = event.target.closest("tr");

		// Extract the ID from the first table cell (assuming consistent structure)
		const idService = row.cells[0].textContent.trim(); // Use cells[0] for more direct access
		// save info in list
		const info = [];
		for (var i = 0; i<row.cells.length-2;i++) {
			info.push(row.cells[i].textContent.trim());
		}
		
		// Get the edit modal form element
		const formEditModal = document.querySelector('.js-edit-table-service');

		// Find the appropriate input element (assuming unique structure within the form)
		const inputService = formEditModal.querySelectorAll('tr input'); // More targeted search
		for (var i = 0; i<inputService.length;i++) {
			inputService[i].value = info[i]	
			}

	}
	

	// handle edit form 
	 const editForm = document.getElementById('js-edit-submit');
	 editForm.addEventListener('submit', (event) => {
	// Prevent default form submission   
	   alert('Đã sửa!');
	 });
	 
	/*------------------------------------------------------------------------------------------*/
	// xoa dich vu
	var buttonRemove = dichVuModal.querySelectorAll('.js-button-remove');

	buttonRemove.forEach(button => {
			      button.addEventListener('click', handleRemoveButton);
			   });
	function handleRemoveButton (event) {
		// Get the row element based on the clicked element
		const row = event.target.closest("tr");
		// Extract the ID from the first table cell (assuming consistent structure)
		const idService = row.cells[0].textContent.trim(); // Use cells[0] for more direct access
		
		const params = "ma_dich_vu="+idService;

		// setup http request
		const url = "/admin/dichvu/remove"; // Assuming you want to send to the current page

	      const request = new XMLHttpRequest();
	      request.open("POST", url, true);
	      request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	
	      request.onreadystatechange = () => {
	        if (request.readyState === XMLHttpRequest.DONE) {
	          if (request.status === 200) {
	            alert('Xoá thành công');
	          } else {
	            alert('Xoá không thành công \nĐảm bảo rằng dịch vụ chưa được đăng kí:', request.status);
	          }
	        }
	      };
	
	      request.send(params);
	}
});
