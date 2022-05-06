*** Settings ***
Library    OperatingSystem
*** Test Cases ***
TC1
    Create File   path=D:\\hello.txt
    ${files}    List Files In Directory    path=D:\\Downloads
    Log To Console    ${files}
    
TC2
    Remove File    path=D:\\hello.txt
    
TC3 
    Remove Directory   D:\\hello12