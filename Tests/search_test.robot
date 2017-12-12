*** Settings ***
Test Setup        Open Tunnelbear    ${tunnelHelp}    ${browser}
Test Teardown     Close Browser
Library           Selenium2Library
Resource          ../Keywords/browser_keywords.robot
Resource		../Keywords/card_keywords.robot

*** Variables ***
${how}	uninstall
${topMessage}     How do I uninstall TunnelBear?

*** Test Cases ***
SearchTest
	Tunnelbear search	${how}
	Verify Messages	${topMessage}