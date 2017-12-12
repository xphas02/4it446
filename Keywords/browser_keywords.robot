*** Settings ***
Library           Selenium2Library

*** Keywords ***
Open Tunnelbear
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}

Tunnelbear search
	[Arguments]	${text}
	Input Text	${searchField}	${text}
	Click Button	${magnifier}

Verify Messages
    [Arguments]    ${topMessage}   
    Wait Until Page Contains    ${topMessage}
    Page Should Contain    ${topMessage}
