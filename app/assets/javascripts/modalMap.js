
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


	$("input:radio[id='one']").change(function() {
		$(".one").css("color", "#f00");
		$(".two, .three, .four, .five").css("color", "#fff");
		$(".rating-text").text("Malo");
	});

	$("input:radio[id='two']").change(function() {
		$(".one, .two").css("color", "#f00");
		$(".three, .four, .five").css("color", "#fff");
		$(".rating-text").text("Decente");
	});

	$("input:radio[id='three']").change(function() {
		$(".one, .two, .three").css("color", "#f00");
		$(".four, .five").css("color", "#fff");
		$(".rating-text").text("Bueno");
	});

	$("input:radio[id='four']").change(function() {
		$(".one, .two, .three, .four").css("color", "#f00");
		$(".five").css("color", "#fff");
		$(".rating-text").text("Muy Bueno");
	});

	$("input:radio[id='five']").change(function() {
		$(".one, .two, .three, .four, .five").css("color", "#f00");
		$(".rating-text").text("Exelente");
	});


});