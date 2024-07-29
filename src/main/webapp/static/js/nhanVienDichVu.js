addEventListener("DOMContentLoaded", (event) => {
	var suaButton = document.querySelectorAll(".js-update");
	var tableModelUpdate = document.querySelector(".js-table-service");
	tableModelUpdate.style.display = "none";

	suaButton.forEach(button => {
		button.addEventListener('click',handleSuaButtonClick)
	})
	
	function handleSuaButtonClick(event) {
		tableModelUpdate.style.display = "";
	}
});
