*** Settings ***
Resource	../Variables/variables.robot
Library	Selenium2Library

*** Keywords ***
Change Psw
	[Arguments]	${password}  ${newpassword}  ${newpasswordcopy}
	Wait Until Element Is Visible   xpath=//*[@id="account-settings"]/ul/li[2]/a	10
	Click Element    xpath=//*[@id="account-settings"]/ul/li[2]/a
	Wait Until Element Is Visible   xpath=//*[@id="main-view"]/div/div[3]/div/div/div[2]/div/form/div[1]/input
	Input Text	xpath=//*[@id="main-view"]/div/div[3]/div/div/div[2]/div/form/div[1]/input	${password}
	Wait Until Element Is Visible   xpath=//*[@id="main-view"]/div/div[3]/div/div/div[2]/div/form/div[2]/input
	Input Password	xpath=//*[@id="main-view"]/div/div[3]/div/div/div[2]/div/form/div[2]/input	${newpassword}
  	Wait Until Element Is Visible   xpath=//*[@id="main-view"]/div/div[3]/div/div/div[2]/div/form/div[3]/input
 	Input Password	xpath=//*[@id="main-view"]/div/div[3]/div/div/div[2]/div/form/div[3]/input	${newpasswordcopy}
	Wait Until Element Is Visible   xpath=//*[@id="main-view"]/div/div[3]/div/div/div[2]/div/form/div[4]/button[2]
	Execute JavaScript    scroll(0, 250)
	Click Button	xpath=//*[@id="main-view"]/div/div[3]/div/div/div[2]/div/form/div[4]/button[2]
