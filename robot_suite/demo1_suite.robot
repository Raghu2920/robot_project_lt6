*** Settings ***
Library    DateTime
*** Test Cases ***
TC1
    Log To Console    Raghuram
    Log To Console    robot

TC2
    Log To Console    Hello

TC3
   ${my_name}   Set Variable    Ram
   Log To Console    ${my_name}
   Log    ${my_name}

TC4
   ${radius}    Set Variable    10
   ${output}    Evaluate    3.14*${radius}*${radius}
   Log To Console    ${output}
   
TC5
   ${base}  Set Variable    25
   ${height}    Set Variable    1
   ${areaoftriangle}    Evaluate    ${base}*${height}/2
    Log To Console    ${areaoftriangle}   

TC6
   ${base}  Set Variable    25
   ${base1}  Set Variable   2.56
   ${height}    Set Variable    70
   ${areaoftrapezium}   Evaluate    (${base}+${base1})*${height}/2
   Log To Console    ${areaoftrapezium}

TC7
   ${date}  Get Current Date
