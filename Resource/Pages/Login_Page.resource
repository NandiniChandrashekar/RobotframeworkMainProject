*** Settings ***
Documentation    This file handles  the login page

Resource    ../Base/Common_Functionality.resource

*** Variables ***
${USERNAME LOCATOR}    id=txtUsername
${PASSWORD LOCATOR}    id=txtPassword 
${LOGIN LOCATOR}    name=Submit
${ERROR LOCATOR}    id=spanMessage

*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Input Text    ${USERNAME LOCATOR}    ${username}
    
Enter Password
    [Arguments]    ${password}
    Input Password    ${PASSWORD LOCATOR}    ${password}
    
Click Login
    Click Element    ${LOGIN LOCATOR}
    
Validate Error Message
    [Arguments]    ${errormessage}    
    Element Text Should Be    ${ERROR LOCATOR}    ${errormessage} 

Get Error Message
    ${text}    Get Text    ${ERROR LOCATOR}
    [Return]   ${text} 

Get Current Url
    ${url}    Get Location
    Return From Keyword  ${url}

