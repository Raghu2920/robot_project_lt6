*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library    Collections

*** Test Cases ***
TC1
    Append To Environment Variable    path      D:\\robot_project\\driver
    Open Browser    url=https://www.facebook.com/   browser=chrome
    Maximize Browser Window
    Click Element    link=Create New Account
    Set Selenium Implicit Wait    10s
    Input Text    name=firstname    hello
    Input Text    name=lastname    hi
    Input Text    name=reg_email__    hello123@gmail.com
    Input Text    name=reg_email_confirmation__   hello123@gmail.com
    Input Password    name=reg_passwd__    password
    Select From List By Label    id=day    20
    Select From List By Label    id=month   Dec
    Select From List By Label    id=year    2000
    Click Element    xpath=//input[@value='-1']
    Select From List By Label    name=preferred_pronoun     He: "Wish him a happy birthday!"
    Click Element    name=websubmit

    