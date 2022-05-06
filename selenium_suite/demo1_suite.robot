*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path      D:\\robot_project\\driver
    Open Browser    url=https://www.facebook.com/     browser=chrome
    Input Text    id=email    lt6@gmail.com
    Input Password    id=pass    welcome123
    Click Element    name=login