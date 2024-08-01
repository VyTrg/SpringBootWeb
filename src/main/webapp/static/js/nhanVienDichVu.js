addEventListener("DOMContentLoaded", (event) => {
	var dichVuModal = document.querySelector('.js-service-modal');
	var buttonEdit = dichVuModal.querySelectorAll('.js-button-edit');
	
	buttonEdit.forEach(button => {
		      button.addEventListener('click', handleEditButton);
		   });
		   
	function handleEditButton(event) {
		// Get the row element based on the clicked element
		const row = event.target.closest("tr");

		// Extract the ID from the first table cell (assuming consistent structure)
		const idService = row.cells[0].textContent.trim(); // Use cells[0] for more direct access

		// Get the edit modal form element
		const formEditModal = document.querySelector('.js-edit-table-service');

		// Find the appropriate input element (assuming unique structure within the form)
		const inputIdService = formEditModal.querySelector('tr:first-child input'); // More targeted search

		// Set the value of the input element
		if (inputIdService) { // Check if the input element is found
		  inputIdService.value = idService;
		} else {
		  console.error("Could not find input element with ID in edit modal form.");
		}
	}
	
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
	            alert("Xoa thanh cong");
	          } else {
	            alert('Request failed with status:', request.status);
	          }
	        }
	      };
	
	      request.send(params);
	}
});
