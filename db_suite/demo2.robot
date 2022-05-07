*** Settings ***
Library    DatabaseLibrary

Test Setup  Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db     dbPassword=12345678     dbHost=db4free.net  dbPort=3306
Test Teardown   Disconnect From Database
*** Test Cases ***
TC1

    ${row_count}    Row Count    select * from Products
    Log To Console    ${row_count}
    Log    ${row_count}


TC2
    Table Must Exist    Products
    Row Count Is Equal To X    select * from Products    81