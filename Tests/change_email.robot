*** Settings ***
Library	Selenium2Library
Resource	../Variables/variables.robot
Resource	../Keywords/login_keywords.robot
Resource	../Keywords/main_paige_keywords.robot
Resource	../Keywords/change_email_keywords.robot
Test Setup	Open Tunnel bear main page
Test Teardown	Close All Browsers

*** Test Cases ***
Log in change email empty
	Open login form
	Login with Credentials	${registeredEmail}	${validPassword}
	Wait Until Page Contains Element	xpath=//button[text()='Log Out']
	Change email	${EMPTY}	${EMPTY}
	Wait Until Page Contains	Grrr.. this email doesn't look quite right. Could you have another look?

Log in change email invalid
  Open login form
  Login with Credentials	${registeredEmail}	${validPassword}
  Wait Until Page Contains Element	xpath=//button[text()='Log Out']
	Change email	${registeredEmail}	${validPassword}
	Wait Until Page Contains	Grrr! An account with this email is already in use.

Log in change email psw invalid
  Open login form
  Login with Credentials	${registeredEmail}	${validPassword}
  Wait Until Page Contains Element	xpath=//button[text()='Log Out']
	Change email	${unregisteredEmail}	${randomLongPassword}
	Wait Until Page Contains	Yikes, your furry paws may have mistyped your password. Please try again.
