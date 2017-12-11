*** Settings ***
Library	Selenium2Library
Resource	../Variables/variables.robot
Resource	../Keywords/main_paige_keywords.robot
Test Setup	Open Tunnel bear main page
Test Teardown	Close All Browsers

*** Test Cases ***
Switch between apps and platforms
	Wait Until Page Contains	APPS
  Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
	Click Link	xpath=//a[text()='iPhone & iPad']
	Wait Until Page Contains Element	xpath=//a[@href='//geo.itunes.apple.com/app/tunnelbear-vpn-unblock-websites/id564842283?mt=8&at=1010l9nk']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/ios']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/android']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/mac']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/windows']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/browser']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/blocker']
	Location Should Be	https://www.tunnelbear.com/apps/ios
	Click Link	xpath=//a[@href='/apps/android']
	Wait Until Page Contains Element	xpath=//a[@href='//play.google.com/store/apps/details?id=com.tunnelbear.android']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/ios']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/android']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/mac']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/windows']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/browser']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/blocker']
	Location Should Be	https://www.tunnelbear.com/apps/android
	Click Link	xpath=//a[@href='/apps/mac']
	Wait Until Page Contains Element	xpath=//a[text()='Download a TunnelBear' and @href='/download']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/ios']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/android']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/mac']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/windows']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/browser']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/blocker']
	Location Should Be	https://www.tunnelbear.com/apps/mac
	Click Link	xpath=//a[@href='/apps/windows']
	Wait Until Page Contains Element	xpath=//a[text()='Download a TunnelBear' and @href='/download']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/ios']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/android']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/mac']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/windows']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/browser']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/blocker']
	Location Should Be	https://www.tunnelbear.com/apps/windows
	Click Link	xpath=//a[@href='/apps/browser']
	Wait Until Page Contains Element	xpath=//a[text()='Download a TunnelBear' and @href='//chrome.google.com/webstore/detail/tunnelbear-beta/omdakjcmkglenbhjadbccaookpfjihpa']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/ios']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/android']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/mac']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/windows']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/browser']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/blocker']
	Location Should Be	https://www.tunnelbear.com/apps/browser
	Click Link	xpath=//a[@href='/apps/blocker']
	Wait Until Page Contains Element	xpath=//a[text()='Add to Chrome' and @href='//chrome.google.com/webstore/detail/blockbear/bebdhgdigjiiamnkcenegafmfjoghafk']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/ios']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/android']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/mac']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/windows']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/browser']
	Wait Until Page Contains Element	xpath=//a[@href='/apps/blocker']
	Location Should Be	https://www.tunnelbear.com/apps/blocker
