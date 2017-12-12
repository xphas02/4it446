*** Settings ***
Library           Selenium2Library

*** Keywords ***
Open Tunnelbear
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}

Go to support
	Wait Until Page Contains Element	xpath=//a[@href="http://tunnelbear.com/support/"]
	Click Element	link=Contact Support