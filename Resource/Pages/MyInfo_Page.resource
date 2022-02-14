*** Settings ***
Documentation     This files handles my info page elements

Resource    ../Base/Common_Functionality.resource

*** Variables ***
${PERSONALDETAILS LOCATOR}    link=Personal Details
${CONTACTDETAILS LOCATOR}    link=Contact Details
${EMERGENCYCONTACTDETAILS LOCATOR}    link=Emergency Contacts 

*** Keywords ***
Click Personal Details 
    Click Element    ${PERSONALDETAILS LOCATOR}    
    
Click Contact Details 
    Click Element    ${CONTACTDETAILS LOCATOR}  
    
Click Emergency Contacts
    Click Element    ${EMERGENCYCONTACTDETAILS LOCATOR}    