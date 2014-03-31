$(document).ready(function() {
		//alert("hbgh");
		//$('#workMenu_IT').hide();
		var boxes = $('input[name="mailTo"]:checked');
	
		$(boxes).each(function(){
            	
            		alert(this.value);
            	
        });
});

