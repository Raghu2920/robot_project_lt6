*** Settings ***
Library     SeleniumLibrary
Library    Collections

*** Variables ***
${MY_NAME}      Raghuram
${ROLE}         Student
@{COLORS}       red   green   blue
*** Test Cases ***
TC1
    Log To Console    ${MY_NAME}
    ${name}     Set Variable    raghu
    Log To Console    ${name}
    
TC2 
    Log To Console    ${MY_NAME}
    Log To Console    ${ROLE}
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]
 
TC3
    @{FRUITS}   Create List     apple      grapes      orange 
    Log To Console    ${FRUITS}[1]
    Append To List  ${FRUITS}   pineapple
    Log To Console    ${FRUITS}
    Remove From List    ${FRUITS}   0
    Log To Console    ${FRUITS}
    Insert Into List    ${FRUITS}    0    mango
    Log To Console    ${FRUITS}
TC4
    @{FRUITS}   Create List     apple      grapes      orange     mango
    FOR    ${i}    IN RANGE    0    4    1
        Log    ${FRUITS}[${i}]

TC5
    @{fruits}   Create List     apple   grapes      orange  mango
    FOR    ${fruit}    IN    @{fruits}
        Log    ${fruit}

    END

    