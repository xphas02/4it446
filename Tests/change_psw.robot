*** Settings ***
Library	Selenium2Library
Resource	../Variables/variables.robot
Resource	../Keywords/login_keywords.robot
Resource	../Keywords/main_paige_keywords.robot
Resource	../Keywords/change_psw_keywords.robot
Test Setup	Open Tunnel bear main page
Test Teardown	Close All Browsers

*** Test Cases ***
Log in change psw empty
	Open login form
	Login with Credentials	${registeredEmail}	${validPassword}
	Wait Until Page Contains Element	xpath=//button[text()='Log Out']
	Change Psw	${EMPTY}  ${EMPTY}  ${EMPTY}
	Wait Until Page Contains	Password must be at least 8 characters long.

Log in change psw invalid
  Open login form
  Login with Credentials	${registeredEmail}	${validPassword}
  Wait Until Page Contains Element	xpath=//button[text()='Log Out']
	Change Psw	${randomLongPassword}  ${randomLongPassword}  ${randomLongPassword}
	Wait Until Page Contains	Current password was incorrect.

Log in change psw dont match
  Open login form
  Login with Credentials	${registeredEmail}	${validPassword}
  Wait Until Page Contains Element	xpath=//button[text()='Log Out']
	Change Psw	${validPassword}  ${randomLongPassword}  ${randomShortPassword}
	Wait Until Page Contains	Passwords don‘t match.
