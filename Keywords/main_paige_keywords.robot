*** Keywords ***
Open tunnel bear main page
	Open Browser	${mainPageUrl}	${browser}
	maximize browser window
	Location Should Be	${mainPageUrl}
	Title Should Be	${mainPageTitle}