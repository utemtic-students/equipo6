$(document).ready(function(){
	scrollA();
	window.myMap =  function () {           
	  var map = new google.maps.Map(document.getElementById('map'), {
	    center: {lat: -34.397, lng: 150.644},
	    zoom: 6
	  });
	  var infoWindow = new google.maps.InfoWindow({map: map});

	  // Try HTML5 geolocation.
	  if (navigator.geolocation) {
	    navigator.geolocation.getCurrentPosition(function(position) {
	      var pos = {
	        lat: position.coords.latitude,
	        lng: position.coords.longitude
	      };

	      infoWindow.setPosition(pos);
	      infoWindow.setContent('Location found.');
	      map.setCenter(pos);
	    }, function() {
	      handleLocationError(true, infoWindow, map.getCenter());
	    });
	  } else {
	    // Browser doesn't support Geolocation
	    handleLocationError(false, infoWindow, map.getCenter());
	  }
	}
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
	 $('.kv-gly-star').rating({
						containerClass: 'is-star'
				});
				$('.kv-gly-heart').rating({
						containerClass: 'is-heart',
						defaultCaption: '{rating} hearts',
						starCaptions: function (rating) {
								return rating == 1 ? 'One heart' : rating + ' hearts';
						},
						filledStar: '<i class="glyphicon glyphicon-heart"></i>',
						emptyStar: '<i class="glyphicon glyphicon-heart-empty"></i>'
				});
				$('.kv-fa').rating({
						theme: 'krajee-fa',
						filledStar: '<i class="fa fa-star"></i>',
						emptyStar: '<i class="fa fa-star-o"></i>'
				});
				$('.kv-fa-heart').rating({
						defaultCaption: '{rating} hearts',
						starCaptions: function (rating) {
								return rating == 1 ? 'One heart' : rating + ' hearts';
						},
						theme: 'krajee-fa',
						filledStar: '<i class="fa fa-heart"></i>',
						emptyStar: '<i class="fa fa-heart-o"></i>'
				});
				$('.kv-uni-star').rating({
						theme: 'krajee-uni',
						filledStar: '&#x2605;',
						emptyStar: '&#x2606;'
				});
				$('.kv-uni-rook').rating({
						theme: 'krajee-uni',
						defaultCaption: '{rating} rooks',
						starCaptions: function (rating) {
								return rating == 1 ? 'One rook' : rating + ' rooks';
						},
						filledStar: '&#9820;',
						emptyStar: '&#9814;'
				});
				$('.kv-svg').rating({
						theme: 'krajee-svg',
						filledStar: '<span class="krajee-icon krajee-icon-star"></span>',
						emptyStar: '<span class="krajee-icon krajee-icon-star"></span>'
				});
				$('.kv-svg-heart').rating({
						theme: 'krajee-svg',
						filledStar: '<span class="krajee-icon krajee-icon-heart"></span>',
						emptyStar: '<span class="krajee-icon krajee-icon-heart"></span>',
						defaultCaption: '{rating} hearts',
						starCaptions: function (rating) {
								return rating == 1 ? 'One heart' : rating + ' hearts';
						},
						containerClass: 'is-heart'
				});

				$('.rating,.kv-gly-star,.kv-gly-heart,.kv-uni-star,.kv-uni-rook,.kv-fa,.kv-fa-heart,.kv-svg,.kv-svg-heart').on(
								'change', function () {
										console.log('Rating selected: ' + $(this).val());
								});
});

function scrollA()
{
		 $('a[href*=#]').click(function() {

			 if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
				 && location.hostname == this.hostname) {

				 var $target = $(this.hash);

			 $target = $target.length && $target || $('[name=' + this.hash.slice(1) +']');

			 if ($target.length) {

				 var targetOffset = $target.offset().top;

				 $('html,body').animate({scrollTop: targetOffset}, 1000);

				 return false;

			 }

		 }

	 });
}
