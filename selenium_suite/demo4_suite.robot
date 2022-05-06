*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path      D:\\robot_project\\driver
    Open Browser      browser=chrome
    Maximize Browser Window
    Go To    url=https://www.salesforce.com/in/form/signup/freetrial-sales/
    Input Text    name=UserFirstName    john
    Input Text    name=UserLastName    wick
    Input Text    name=UserEmail    johnwick@gmail.com
    Select From List By Label       name=UserTitle      IT Manager
    Input Text    name=CompanyName    LT
    Select From List By Label    name=CompanyEmployees      101 - 500 employees
    Select From List By Label    name=CompanyCountry        United Kingdom
    Click Element    xpath=(//div[@class='checkbox-ui'])
    Click Element    name=start my free trial
    Element Text Should Be    xpath=//span[contains(@id,'UserPhone')]    Enter a valid phone number