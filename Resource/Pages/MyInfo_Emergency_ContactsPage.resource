*** Settings ***
Documentation     This files handles emergency contact page elements

Resource    ../Base/Common_Functionality.resource

*** Variables ***
${ADD LOCATOR}    id=btnAddContact
${NAME LOCATOR}    id=emgcontacts_name
${RELATIONSHIP LOCATOR}    id=emgcontacts_relationship
${HOMEPHONE LOCATOR}    id=emgcontacts_homePhone
${MOBILE LOCATOR}    id=emgcontacts_mobilePhone
${WORKPHONE LOCATOR}     id=emgcontacts_workPhone
${SAVE LOCATOR}    id=btnSaveEContact
${ASSIGNEDCONTATCTTABLE LOCATOR}    id=emgcontact_list

*** Keywords ***
Click Add Emergency Contact
    Click Element    ${ADD LOCATOR}  
    
Enter Contact Name
    [Arguments]    ${name}
    Input Text    id=emgcontacts_name    ${name}
    
Enter Relationship
    [Arguments]    ${relationship}
    Input Text    ${RELATIONSHIP LOCATOR}   ${relationship}
    
Enter Home Phone Number 
    [Arguments]    ${number}
    Input Text    ${HOMEPHONE LOCATOR}    ${number} 
    
Enter Mobile Number
    [Arguments]    ${number}
     Input Text    ${MOBILE LOCATOR}   ${number}
     
Enter Work Phone Number
    [Arguments]    ${number}
    Input Text    ${WORKPHONE LOCATOR}    ${number}
    
Click Save Emergency Contact
    Click Element    ${SAVE LOCATOR}
    
Validate Saved Contact Details
    [Arguments]    ${name}    ${relationship}    ${mobilenumber}
    Table Should Contain    ${ASSIGNEDCONTATCTTABLE LOCATOR}    ${name}
    Table Should Contain    ${ASSIGNEDCONTATCTTABLE LOCATOR}    ${relationship}
    Table Should Contain    ${ASSIGNEDCONTATCTTABLE LOCATOR}    ${mobilenumber}
