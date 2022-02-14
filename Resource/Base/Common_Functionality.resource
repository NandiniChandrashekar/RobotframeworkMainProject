*** Settings ***
Documentation    This file handles the browser configuration, screenshot folder locations

Library    OperatingSystem    
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://opensource-demo.orangehrmlive.com/


*** Keywords ***
Launch Browser
    Append To Environment Variable    Path      ${EXECDIR}${/}driver
    Open Browser    browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    40s
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
    Go To    url=${URL}
    
    
End Browser
    # Capture Page Screenshot    
    Close Browser