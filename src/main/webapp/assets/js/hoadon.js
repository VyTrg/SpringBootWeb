function searchHoaDon() {
  var searchInput = document.querySelector(".js-search");
  var rows = document.querySelectorAll("tbody tr");
  searchInput.addEventListener('input',(e) => {
	// get data inside input
	var value = e.target.value;
	// get data in row
	rows.forEach(element => {
		var data = element.querySelectorAll("td");
		var stringsInRow = "";
		data.forEach(eData => {
			stringsInRow += eData.innerHTML.trim();
		});
		var isVisible = stringsInRow.includes(value.trim());
		if (value.length == 0) {
			element.style.display = "";			
		}
		else if (isVisible) {
			element.style.display = "none";
		} else {
			element.style.display = "";
		}
	});
  });
  
}

// Call the function after JSTL generation (assuming some event triggers this)
document.addEventListener('DOMContentLoaded', () => {
  // ... (other code)
  searchHoaDon();
});