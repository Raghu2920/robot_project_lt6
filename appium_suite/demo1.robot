*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=roninrey_hJtbdC
    ...     browserstack.key=sD6nrxZ27MYqsUmEHjz4
    ...     app=bs://59113956114e08fc158272cd1d24f0517d587719
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=Khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}

    Set Appium Timeout    30s
    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']      30s
    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//*[@text='Sign in']      30s
    Click Element    xpath=//*[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[@text='Sign in']      30s
    Click Element    xpath=//*[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[@text='Enter an e-mail address or username']     50s
    Input Text    xpath=//*[@text='Enter an e-mail address or username']    hello@gmail.com
    
    Input Text    xpath=//*[contains@text,'Pass')]    hello123
    Click Element    xpath=(//*[@text='Sign in'])[2]

    Close Application