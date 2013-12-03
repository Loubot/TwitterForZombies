$(document).on 'click', '#tester', ->
	i = 0
	while i < document.forms[0].select_role.length
		if select_role[i].checked
			alert select_role[i].value
		i++
	
