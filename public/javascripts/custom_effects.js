/**
 * @author tom
 */

$(document).ready(function(){

	$("#product_link").hover(
		function() {
			$("#product_text").slideToggle();
		},
		function() {
			$("#product_text").slideToggle();
		}
	);
	$("#event_link").hover(
		function() {
			$("#event_text").slideToggle();
		},
		function() {
			$("#event_text").slideToggle();
		}
	);
	$("#fashion_link").hover(
		function() {
			$("#fashion_text").slideToggle();
		},
		function() {
			$("#fashion_text").slideToggle();
		}
	);
	
	
	$("#test_link").hover(
		function() {
			$("#product_t").slideToggle();
		},
		function() {
			$("#product_t").slideToggle();
		}
	);
});