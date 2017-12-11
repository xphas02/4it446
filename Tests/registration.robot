*** Settings ***
Library	Selenium2Library
Resource	../Variables/variables.robot
Resource	../Keywords/main_paige_keywords.robot
Resource	../Keywords/login_keywords.robot
Resource	../Keywords/registration_keywords.robot
Test Setup	Open Tunnel bear main page
Test Teardown	Close All Browsers

*** Variables ***


*** Test Cases ***
Register witouth credentials
	Open registration form
	Register with credentials	${EMPTY}	${EMPTY}
	Wait Until Page Contains	Grrr.. this email doesn't look quite right. Could you have another look?

Register using registered email
	Open registration form
	Register with credentials	${registeredEmail}	${randomLongPassword}
	Wait Until Page Contains	Grrr! An account with this email is already in use.

Register witouth a password
	Open registration form
	Register with credentials	${unregisteredEmail}	${EMPTY}
	Wait Until Page Contains	Grr... Please enter a valid password.

Register with a short password
	Open registration form
	Register with credentials	${unregisteredEmail}	${randomShortPassword}
	Wait Until Page Contains	Password must be at least 8 characters long.

Register with a nonvalid email password
	Open registration form
	Register with credentials	${nonValidEmail}	${randomLongPassword}
	Wait Until Page Contains	Hmm... this doesn't look like a valid email.
