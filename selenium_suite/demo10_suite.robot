*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path      D:\\robot_project\\driver
    Open Browser      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://smallpdf.com/pdf-to-word
    Choose File    xpath=//input[@type='file']    D:${/}BBB.pdf
    ${current_title}    Get Title
    Log To Console    ${current_title}
    ${url}  Get Location
    Log To Console    ${url}
    Get Source

