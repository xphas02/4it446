*** Settings ***
Test Setup        Login and Upgrade
Test Teardown     Close All Browsers
Library           Selenium2Library
Resource          ../Variables/variables.robot
Resource          ../Keywords/card_keywords.robot
Resource          ../Keywords/main_paige_keywords.robot

*** Test Cases ***
Pay with Testing Card (visa)
    Enter Card Details    4222222222222    Test    12    2020    733    Hollow
    ...    Market    United Kingdom
    Wait Until Page Contains Element    xpath=//p[contains(@class,"alert")]

Pay with Testing Card (mastercard)
    Enter Card Details    5555555555554444    Test    12    2020    733    Hollow
    ...    Market    United Kingdom
    Wait Until Page Contains Element    xpath=//p[contains(@class,"alert")]
