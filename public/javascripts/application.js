// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


jQuery(document).ready(function() {
	
	// focus on the first text input field in the first field on the page
	$("input[type='text']:first", document.forms[0]).focus();
	//$("select:first", document.forms[0]).focus();
		
		
	// api http://flowplayer.org/tools/tooltip.html	
	// select all desired input fields and attach tooltips to them 
	$("#form_table :input").tooltip({ 
	    // place tooltip on the right edge 
	    position: "center right", 
	    // a little tweaking of the position 
	    offset: [-2, 10], 
	    // use the built-in fadeIn/fadeOut effect 
	    effect: "fade", 
	    // custom opacity setting 
	    opacity: 0.7, 
	    // use this single tooltip element 
	    tip: '.tooltip' 
	});
	
	
	// toggle per selection of dropdown selection menu
	$("#context").change(function(event) {
		//alert ($(event.target).attr('value'));
		if($(event.target).attr('value') == 'Add new'){
			$('#new_context_field').show();
			$('#new_context').focus();
          } else {
            $('#new_context_field').hide()
            $('#reference').focus();
        };		 
	});
	
	// toggle context disable based on site value
	// upon reset, resets context value 
	$("#site").change(function(event) {
		if($(event.target).attr('value') == 'Please select option ...'){
			$('#context').attr('disabled','disabled');
			$('#context').val('Please select option ...').change();
          } else {
            $('#context').removeAttr('disabled');
        };		 
	});
	
	// make container clickable
	$(".link_box").click(function(){
	     window.location=$(this).find("a").attr("href");
	     return false;
	});
	
	// function for thumbnail repeater
	$.fn.duplicate = function(count, cloneEvents) {
		var tmp = [];
		for ( var i = 0; i < count; i++ ) {
			$.merge( tmp, this.clone( cloneEvents ).get() );
		}
		return this.pushStack( tmp );
	};
	$('li.thumb').duplicate(14).appendTo('#thumb_container_15');
	$('li.thumb').duplicate(29).appendTo('#thumb_container_30');
	$('li.thumb').duplicate(59).appendTo('#thumb_container_60');
	$('li.thumb').duplicate(99).appendTo('#thumb_container_100');

});