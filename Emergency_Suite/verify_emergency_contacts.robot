*** Settings ***
Documentation    This robot file handle emergency contact

Resource    ../Resource/Base/Common_Functionality.resource
Resource    ../Resource/Pages/Login_Page.resource
Resource    ../Resource/Pages/Main_Page.resource
Resource    ../Resource/Pages/MyInfo_Page.resource
Resource    ../Resource/Pages/MyInfo_Emergency_ContactsPage.resource



Test Setup    Launch Browser
Test Teardown    End Browser
Test Template    Verify Emergency Contacts Template

Library    DataDriver    file=../testdata/TestData.xlsx     sheet_name=VerifyEmergencyContacts

*** Test Cases ***
Verify Emergency Contacts Test_${name}
       
    
*** Keywords ***
Verify Emergency Contacts Template 
    [Arguments]    ${username}    ${password}    ${name}    ${relationship}    ${hometelephone}    ${mobile}    ${worktelephone}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login  
    Click MyInfo
    Click Emergency Contacts    
    Click Add Emergency Contact   
    Enter Contact Name    ${name}
    Enter Relationship    ${relationship}
    Enter Home Phone Number    ${hometelephone}  
    Enter Mobile Number    ${mobile}
    Enter Work Phone Number    ${worktelephone}
    Click Save Emergency Contact
    Validate Saved Contact Details    ${name}    ${relationship}    ${mobile}  
     


     