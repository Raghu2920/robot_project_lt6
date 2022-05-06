*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path      D:\\robot_project\\driver
    Open Browser      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.medibuddy.in/
    Click Element    id=wzrk-cancel
    Click Element    xpath=//a[text()='For Employer'] 
    Switch Window   MediBuddy LaunchPad
    Input Text    id=getInTouchName    john
    Input Text    id=getInTouchEmail    johnwick@gmail.com
    Input Text    id=getInTouchMobile    123450
    Input Text    id=getInTouchDesignation    Trainer
    Input Text    id=getInTouchEmpCount    40
    Click Element    xpath=//button[@class='btn-primary mt-10 w-full']
    Element Text Should Be    xpath=//div[contains(@class,'text-red-600 ml-2')]    Mobile Number should be 10 digits
    Close Browser