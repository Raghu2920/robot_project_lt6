*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path      D:\\robot_project\\driver
    Open Browser    url=https://www.goto.com/meeting/   browser=chrome
    Maximize Browser Window
    Click Element    id=truste-consent-button
    Click Element    link=Try Free
    Input Text    name=FirstName    john
    Input Text    name=LastName    wick
    Input Text    id=login__email   john@gmail.com
    Input Text    id=contact-number    898988
    Input Text    id=login__password   john@123
    Select From List By Label    name=CompanySize    10 - 99
    Click Element    xpath=//button[@data-button="trial-submit"]