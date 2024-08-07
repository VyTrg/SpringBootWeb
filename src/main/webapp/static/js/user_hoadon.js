document.addEventListener('DOMContentLoaded', () => {
    var chitietModal = document.querySelectorAll('.btn_chitiethoadon');

    chitietModal.forEach(button =>{
        button.addEventListener('click', handleViewButton);
    })

    function handleViewButton(event){
        const row = event.target.closest("tr");
        // alert(row.cells[0].textContent);
        // const params = "?id_hoa_don="+row.cells[0].textContent;
        // const url="/user/hoadon/find/"+row.cells[0].textContent;
        // const request = new XMLHttpRequest();
	    // request.open("GET", url, true);
        // request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        // request.onreadystatechange = () => {
	    //     if (request.readyState === XMLHttpRequest.DONE) {
	    //       if (request.status === 200) {
                
	    //       } else {
	            
	    //       }
	    //     }
	    //   };
        // request.send(params);
    }
});