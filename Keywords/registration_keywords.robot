*** Keywords ***
Open registration form
	Open login form
	Wait Until Page Contains	I don't have a TunnelBear account.
	Click element	xpath://a[text()="TunnelBear account."]

Register with credentials
	[Arguments]	${email}	${password}
	Wait Until Page Contains Element	xpath://input[@type='email']
	Wait Until Page Contains Element	xpath://input[@type='password']
	Input Text	xpath://input[@type='email']	${email}
	Input Password	xpath://input[@type='password']	${password}
	Click Button	xpath://button[@type='submit']
