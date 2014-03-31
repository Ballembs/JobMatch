$(document).ready(function(){
	
	$( ".bpwSubHd" ).slideDown("slow");
});

$(document).ready(function() {
	//$(".placeToWork").hide();
	$("#ITMenu").click(function() {
		$(".placeToWork").hide();
		$("#ITBlock").show();
	});
	
	$("#ManufMenu").click(function() {
		$(".placeToWork").hide();
		$("#ManufacturingBlock").show();
	});
	
	$("#ServicesMenu").click(function() {
		$(".placeToWork").hide();
		$("#ServicesBlock").show();
	});
	
	$('#ALLMenu').click(function(){
		$(".placeToWork").show();
	});
});