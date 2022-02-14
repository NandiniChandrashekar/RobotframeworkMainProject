*** Settings ***
Documentation    This  file handles invalid credential
...

Resource    ../Resource/Base/Common_Functionality.resource
Resource    ../Resource/Pages/Login_Page.resource

Test Setup    Launch Browser
Test Teardown    End Browser

Test Template    Verify Invalid Credential Template

*** Test Cases ***
TC1    nandu   nandu123    Invalid credentials
TC2    chandu    chandu123     Invalid credentials
TC3    ${EMPTY}    rakshi123    Username cannot be empty
TC4    lochan   ${EMPTY}    Password cannot be empty
           
*** Keywords ***
Verify Invalid Credential Template
    [Arguments]    ${username}    ${password}    ${expectedvalue}
    Enter Username    ${username} 
    Enter Password    ${password}
    Click Login   
    Validate Error Message    ${expectedvalue}