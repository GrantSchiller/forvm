ready = ->
	$("form .field input, form .field select").focus ->
		$(this).parent().addClass("focus")
	$("form .field input, form .field select").blur ->
		$(this).parent().removeClass("focus")

$(document).ready(ready)
$(document).on('page:load', ready)