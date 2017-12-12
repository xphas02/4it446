*** Settings ***
Test Setup        Open Browser	${tunnelHelp}	${browser}
Test Teardown     Close Browser
Library           Selenium2Library
Resource          ../Keywords/browser_keywords.robot
Resource		../Keywords/card_keywords.robot

*** Variables ***
${registeredEmail}	4it446@gmail.com
${validPassword}	WORKERSperiodCANADA
${descriptionField}	id=desc-text
${bear}	Contact a Support Bear

*** Test Cases ***
Show help
	Wait Until Page Contains Element    xpath=//div[@class='support-bear-inner']//a[@href="https://tunnelbear.com/support"]
	Click Link	xpath=//div[@class='support-bear-inner']//a[@href="https://tunnelbear.com/support"]
	LogIn Valid
	Location Should Be	https://www.tunnelbear.com/support#/login
	Click Button	xpath=//button[@type='submit']
	Wait Until Page Contains Element	id=bear
	Page Should Contain Element	id=bear