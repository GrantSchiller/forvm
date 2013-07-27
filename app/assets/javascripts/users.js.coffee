root = exports ? this
root.displayNoSkills = ->
	if $("#user-skills li").size() == 0
		$("#skills-message").show()
	else
		$("#skills-message").hide()

ready = ->
	$("#skills_input").prepend('<p id="skills-message">Add some skills.</p>')
	$("#skills-message").hide()
	
	root.displayNoSkills()
	
	$("#user-skills li").each ->
		arr = this.id.split("-")
		id = arr[arr.length-1]
		
		$("#skill_id option[value=" + id + "]").remove();
	
	$("form .field input, form .field select").focus ->
		$(this).parent().parent().addClass("focus")
	$("form .field input, form .field select").blur ->
		$(this).parent().parent().removeClass("focus")
	
	displaySchoolRequest()
	$("#user_school_id").change -> displaySchoolRequest()

displaySchoolRequest = ->
	if $("#user_school_id option:selected").text() == "None"
		$("#school-request").show()
	else
		$("#school-request").hide()

$(document).ready(ready)
$(document).on('page:load', ready)