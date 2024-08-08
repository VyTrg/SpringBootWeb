addEventListener("DOMContentLoaded", (event) => {
	var selectClient = document.querySelector(".js-client-select");
	var selectHouse = document.querySelector(".js-house-select");
	var modalTableClient = document.querySelector(".js-client-modal-table");
	var modalTableHouse = document.querySelector(".js-house-modal-table");
	
	selectClient.addEventListener('change', (event) => {
		var idClient = event.target.value;
		var param = "idClient="+idClient;
		const url = "/admin/quanlihoadon"; // Assuming you want to send to the current page
				
		      const request = new XMLHttpRequest();
		      request.open("POST", url, true);
		      request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

		      request.onreadystatechange = () => {
		        if (request.readyState === XMLHttpRequest.DONE) {
		          if (request.status === 200) {
		            console.log(request.status);
		          } else {
		            console.error('Request failed with status:', request.status);
		          }
		        }
		      };

		      request.send(param);
	});
	
	selectHouse.addEventListener('change', (event) => {
		var idHouse = event.target.value;
		var param = "idHouse="+idHouse;
		const url = "/admin/quanlihoadon"; // Assuming you want to send to the current page
				
		      const request = new XMLHttpRequest();
		      request.open("POST", url, true);
		      request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

		      request.onreadystatechange = () => {
		        if (request.readyState === XMLHttpRequest.DONE) {
		          if (request.status === 200) {
		            console.log(request.response);
		          } else {
		            console.error('Request failed with status:', request.status);
		          }
		        }
		      };

		      request.send(param);
	});
});
