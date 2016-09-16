
$(document).ready(function(){
	var modal = document.getElementById('myModal');
	var span = document.getElementsByClassName("close")[0];
	var allSite = document.getElementById('allSite').value;

	for (var i = 1; i <= parseInt(allSite); i++) {
		var btn = document.getElementById("btnModel"+i);
		btn.onclick = function() {
		    modal.style.display = "block";
		}
	}
	span.onclick = function() {
	    modal.style.display = "none";
	}
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
});