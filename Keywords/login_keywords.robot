*** Settings ***
Resource	../Variables/variables.robot
Library	Selenium2Library

*** Keywords ***
Open login form
	Page Should Contain	Log In
	Click Link	/account#/login

Login with credentials
	[Arguments]	${email}	${password}
	Wait Until Page Contains Element	xpath://input[@type='email']
	Wait Until Page Contains Element	xpath://input[@type='password']
	Input Text	xpath://input[@type='email']	${email}
	Input Password	xpath://input[@type='password']	${password}
	Click Button	xpath://button[@type='submit']

