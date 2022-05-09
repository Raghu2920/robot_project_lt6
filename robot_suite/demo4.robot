*** Variables ***
&{MY_DETAILS}      name=Raghu   role=student     location=Chennai

*** Test Cases ***
TC1
    Log To Console    ${MY_DETAILS}[name]
    Log To Console    ${MY_DETAILS}[role]