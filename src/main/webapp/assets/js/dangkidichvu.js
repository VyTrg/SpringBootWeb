// Wait for the DOM to load before selecting elements
document.addEventListener('DOMContentLoaded', () => {
	// save list service in map (when get code-service return count-service)
	let listService = new Map();
	
    var tableModel = document.querySelector(".js-body-table")
	
    const checkboxes = document.querySelectorAll('.js-check');
    checkboxes.forEach(checkbox => {
      checkbox.addEventListener('click', handleCheckboxClick);
    });
  
	var buttonRegister = document.querySelector(".js-register");
	buttonRegister.addEventListener('click', handlebuttonRegister)

    // Function to handle checkbox click (modify as needed)
    function handleCheckboxClick(event) {
        const isChecked = event.target.checked;
        if (isChecked) {
            // Checkbox is checked, potentially add a new row or perform other actions
            const parentElement = event.target.closest('.detail-service');
            //get data
            var nameService = parentElement.querySelector(".name-service").textContent;
            var priceService = parentElement.querySelector(".price-service").textContent;
            var vatService = parentElement.querySelector(".vat-service").textContent;
            var countService = parentElement.querySelector(".count-service").value; // Get the value from the input

            var sum = priceService*countService*(100+vatService/100)
			
			listService.set(parentElement.id,countService);
            var objService = {
                id: parentElement.id,
                name: nameService,
                price: priceService,
                count: countService,
                sum: sum
            };
            //inner HTML
            printListService(objService);
            // hire service
            this.style.display = "none";
			parentElement.querySelector(".count-service").value = 0;
        }
    }

    function printListService(objService) {
        // Create an empty <tr> element and add it to the 1st position of the table:
        var row = tableModel.insertRow(0);
        // Insert new cells (<td> elements) at the 1st and 2nd position of the "new" <tr> element:
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        var cell4 = row.insertCell(3);
        var cell5 = row.insertCell(4);

        // Add some text to the new cells:
        cell1.innerHTML = `<td>${objService.name}</td>`;
        cell2.innerHTML = `<td>${objService.price}</td>`;
        cell3.innerHTML = `<td>${objService.count}</td>`;
        cell4.innerHTML = `<td><span class="badge bg-light text-dark">${objService.sum}</span></td>`;
        cell5.innerHTML = `<td><button type="button" class="btn btn-danger js-button-cancel" id="${objService.id}"><i class="bi bi-trash3"></i></button>
                                </td>`;
                                
        // Select buttons after they are potentially added to the DOM
        const buttons = document.querySelectorAll(".js-button-cancel");
        buttons.forEach(button => {
        button.addEventListener('click', handleButtonClick);
      });
    }

    // function when button click
    function handleButtonClick(event) {
		
		var idButton = this.id;
		var checkBox = document.getElementById(idButton).querySelector(".js-check");
		var spinner = document.getElementById(idButton).querySelector(".js-count")
		checkBox.style.display = "block";
		checkBox.checked = false;
		spinner.value = 1;
		
		// delete listService
		listService.delete(idButton);
		
		// delete row
        var index = this.parentNode.parentNode.rowIndex;
        tableModel.deleteRow(index-1);
    }
	
	function handlebuttonRegister(event) {
		if (listService.size > 0) {	
			// charge map datastructure to json file
			listService = JSON.stringify(Object.fromEntries(listService));
			// get location
			var url = window.location.href;
			// prepare request
			var request = new XMLHttpRequest();
			request.open("POST",url,true);
			request.setRequestHeader("Content-Type", "application/json");

			request.onreadystatechange = () => {
			  // Call a function when the state changes.
			  if (request.readyState === XMLHttpRequest.DONE && request.status === 200) {
				alert(request.response)
			  }
			};
			request.send(listService);
			
			var countRows = tableModel.rows.length;
			for (let i = 0; i<countRows; i++) {
				tableModel.deleteRow(0);
			}

		} else {
			alert("Hay chon dich vu");
		}
	}
});