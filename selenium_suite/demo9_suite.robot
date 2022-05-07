*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path      D:\\robot_project\\driver
    Open Browser      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice   English (Indian)
    Click Element    id=login-button
    Click Element    xpath=//div[text()='Messages']
    Select Frame    xpath=//iframe[@name='msg']
    Click Element    xpath=//a[@class='btn btn-primary btn-add']
    Select From List By Label    name=form_note_type    Pharmacy
    Select From List By Label    name=form_message_status    New
    Select From List By Label    name=users                Jarvis, Fred
    Input Text    id=note    Hello
    Click Element    id=newnote
    Element Should Contain    id=error_reply_to    Please choose a patient
    Unselect Frame
    Close Browser

