*** Settings ***
Documentation   this file verifes the test cases for a new person to login

Library   SeleniumLibrary
Resource  ../base/common_functionality.resource
Resource  ../pages/main_page.resource

Test Setup  Launch Browser
Task Teardown  End Browser

Test Template  Valid Credential Template

*** Test Cases ***
TC1     Zoya   Mehta    Zoyamehta@gmail.com    Spirits   9870012345   Europe
TC2    Harshad  Chopda   harshad1@gmail.com   Spirits   9870011009   Europe
#TC1     Zoya   Mehta    Zoyamehta@gmail.com    Spirits   9870012345   Europe

*** Keywords ***
Valid Credential Template
        [Arguments]     ${fname}   ${lname}  ${email}  ${company}  ${phone}   ${place}
         Input Text    name=first-name  ${fname}
         Input Text    name=last-name    ${lname}
         Input Text    name=email      ${email}
         Input Text    name=company    ${company}
         Input Text    name=phone     ${phone}
         Click Element    link=Change
         Select From List By Label    name=data-center-dropdown   ${place}
         Click Element    xpath=//input[@value='Sign up for Free']
         Title Should Be     ${expected_title}

