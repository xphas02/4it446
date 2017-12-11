*** Settings ***
Library           Selenium2Library
Resource          ../Variables/variables.robot
Resource          ../Keywords/main_paige_keywords.robot

*** Test Cases ***
Main Navigation
    Open tunnel bear main page
    Page Should Contain Element    id=nav-items
    Click Element    link=Pricing
    Location Should Be    https://www.tunnelbear.com/pricing
    Page Should Contain Element    id=nav-items
    Page Should Contain Element    id=bear-plans
    Click Element    link=Log In
    Location Should Be    https://www.tunnelbear.com/account#/login
    Page Should Contain Element    id=nav-items
    Page Should Contain    Log in to TunnelBear