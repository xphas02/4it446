*** Keywords ***
/* nefunguje Maximize Browser Window
Open tunnel bear main page
	Open Browser	${mainPageUrl}	${browser}
	Location Should Be	${mainPageUrl}
	Title Should Be	${mainPageTitle}
