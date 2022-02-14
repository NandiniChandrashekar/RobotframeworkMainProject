*** Settings ***
Documentation    This  file handles  valid credential


Resource    ../Resource/Base/Common_Functionality.resource
Resource    ../Resource/Pages/Login_Page.resource
Resource    ../Resource/Pages/Main_Page.resource

Test Setup    Launch Browser
Test Teardown    End Browser

Test Template    Verify Valid Credential Template

Library    DataDriver    file=../testdata/TestData.xlsx     sheet_name=VerifyValidCredential  

*** Test Cases ***
Verify Valid Credential Test_${testcase}
    

*** Keywords ***
Verify Valid Credential Template
    [Arguments]    ${username}    ${password}    ${expectedvalue1}    ${expectedvalue2}
    Enter Username    ${username} 
    Enter Password    ${password}
    Click Login 
    MainPage Should Contain    ${expectedvalue1}     ${expectedvalue2} 
    









