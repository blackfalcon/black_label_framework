// Place this script into the applicaiton to simulate an ajax UI load


jQuery(document).ready(function() {	
	// submit action to show ajax spinner action
	$('#submit_link').click(function(event){
		event.preventDefault();
		
		// clears data entered into the form to sim action
		clearForm(['#reference','#key','#context','#content','#notes']);
		toggleForm();
		
		// timmer to auto toggle back to the form
		setTimeout("toggleForm()",1000);
	});
});

// toggles the UI to remove the form and show the spinner
var toggleForm = function(){
	$('#toggle_div').toggle();
	$('#ajax_spinner').toggle();
	
	// resets focus to second form field on refresh
	$("input[type='text']:first", document.forms[0]).focus();	
};

// clears data entered into the form to sim action
var clearForm = function(field_array){
	$.each(field_array,function(i,item){
		$(item).attr('value','');
	})
};
