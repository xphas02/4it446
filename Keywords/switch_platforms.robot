*** Settings ***
Library           Selenium2Library

*** Keywords ***
Validate Links
	Wait Until Page Contains Element	xpath=//a[@href='//geo.itunes.apple.com/app/tunnelbear-vpn-unblock-websites/id564842283?mt=8&at=1010l9nk']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/ios']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/android']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/mac']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/windows']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/browser']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/blocker']