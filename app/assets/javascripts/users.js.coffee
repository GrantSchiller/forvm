ready = ->
	displaySchoolRequest()
	$("form .field input, form .field select").focus ->
		$(this).parent().addClass("focus")
	$("form .field input, form .field select").blur ->
		$(this).parent().removeClass("focus")
	$("#user_school_id").change -> displaySchoolRequest()

displaySchoolRequest = ->
	if $("#user_school_id option:selected").text() == "None"
		$("#school-request").show()
	else
		$("#school-request").hide()

$(document).ready(ready)
$(document).on('page:load', ready)