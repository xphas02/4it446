*** Settings ***
Resource          ../Variables/variables.robot
Resource          ../Keywords/main_paige_keywords.robot
Library           Selenium2Library

*** Keywords ***
LogIn Valid
    Wait Until Page Contains Element    xpath=//input[@type="email"]
    Input Text    xpath=//input[@type="email"]    ${registeredEmail}
    Input Password    xpath=//input[@type="password"]    ${validPassword}
    Wait Until Page Contains Element    xpath=//button[@type="submit"]
    Click Button    xpath=//button[@type="submit"]

Enter Card Details
    [Arguments]    ${card}    ${cardholder}    ${expMonth}    ${expYear}    ${cvc}    ${address}
    ...    ${city}    ${country}
    Wait Until Page Contains Element    xpath=//input[@name="cardNumber"]
    Input Text    xpath=//input[@name="cardNumber"]    ${card}
    Input Text    xpath=//input[@name="cardholder"]    ${cardholder}
    Input Text    xpath=//input[@name="expMonth"]    ${expMonth}
    Input Text    xpath=//input[@name="expYear"]    ${expYear}
    Input Text    xpath=//input[@name="cvc"]    ${cvc}
    Input Text    xpath=//input[@name="address"]    ${address}
    Input Text    xpath=//input[@name="city"]    ${city}
    Select From List By Label    xpath=//select[@name="country"]    ${country}
    Execute JavaScript    scroll(0, 250)
    Click Element    xpath=//button[contains(@class,"wait-btn")]

Login and Upgrade
    Open tunnel bear main page
    Click Element    link=Log In
    LogIn Valid
    Wait Until Page Contains Element    xpath=//a[@href="#/upgrade"]
    Click Element    link=Upgrade Now
    Wait Until Page Contains Element    xpath=//section[@id="payment-wrap"]
    Location Should Be    https://www.tunnelbear.com/account#/upgrade
