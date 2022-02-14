*** Settings ***
Documentation    This file handles all the main page

Resource    ../Base/Common_Functionality.resource

*** Variables ***
${MYINFO LOCATOR}    xpath=//b[text()='My Info']
${PERFORMANCE LOCATOR}    xpath=//b[text()='Perfomance ']

*** Keywords ***
MainPage Should Contain
    [Arguments]    ${text1}    ${text2}
    Page Should Contain    ${text1}
    Page Should Contain    ${text2}    
    
Click MyInfo
    Click Element    ${MYINFO LOCATOR}
    
Click Perfomance 
    Click Element    ${PERFORMANCE LOCATOR}    