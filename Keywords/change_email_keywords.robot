*** Settings ***
Resource	../Variables/variables.robot
Library	Selenium2Library

*** Keywords ***
Change email
	[Arguments]	${email}	${password}
	Wait Until Element Is Visible   xpath=//*[@id="account-settings"]/ul/li[1]/a	10
	Click Element    xpath=//*[@id="account-settings"]/ul/li[1]/a
	Wait Until Element Is Visible   xpath=//*[@id="main-view"]/div/div[2]/div/div/div[2]/div/form/div[1]/input
	Input Text	xpath=//*[@id="main-view"]/div/div[2]/div/div/div[2]/div/form/div[1]/input	${email}
	Wait Until Element Is Visible   xpath=//*[@id="main-view"]/div/div[2]/div/div/div[2]/div/form/div[2]/input
	Input Password	xpath=//*[@id="main-view"]/div/div[2]/div/div/div[2]/div/form/div[2]/input	${password}
	Wait Until Element Is Visible   xpath=//*[@id="main-view"]/div/div[2]/div/div/div[2]/div/form/div[3]/button[2]
	Execute JavaScript    scroll(0, 250)
	Click Button	xpath=//*[@id="main-view"]/div/div[2]/div/div/div[2]/div/form/div[3]/button[2]
