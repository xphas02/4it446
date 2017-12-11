*** Settings ***
Library	Selenium2Library
Resource	../Variables/variables.robot
Resource	../Keywords/login_keywords.robot
Resource	../Keywords/main_paige_keywords.robot
Test Setup	Open Tunnel bear main page
Test Teardown	Close All Browsers

*** Test Cases ***
Loging in with valid email and invalid password
	Open login form
	Login with credentials	${registeredEmail}	${randomLongPassword}
	Wait Until Page Contains	We can't seem to find that email and password combination, try another?

Loging in witouth credentials
	Open login form
	Login with credentials	${EMPTY}	${EMPTY}
	Wait Until Page Contains	Grrr.. this email doesn't look quite right. Could you have another look?

Loging in with invalid email and valid password
	Open login form
	Login with credentials	${unregisteredEmail}	${validPassword}
	Wait Until Page Contains	We can't seem to find that email and password combination, try another?

Loging in with valid email and valid password
	Open login form
	Login with Credentials	${registeredEmail}	${validPassword}
	Wait Until Page Contains Element	xpath=//button[text()='Log Out']
