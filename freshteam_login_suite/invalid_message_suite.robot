*** Settings ***
Documentation      This suit file handles 2 test case related to the
...     invalid message credentials

Resource   ../pages/login_page.resource

Library  DataDriver   file=../test_data/invalid_data.xlsx      sheet_name=VerifyInvalidCredentialTemplate
#Library  AutoRecorder   mode=suite,test

Test Setup      Launch Browser
Test Teardown   End Browser

Test Template       Verify Invalid Credential Template

*** Test Cases ***
TC3
TC4

*** Keywords ***
Verify Invalid Credential Template

         [Arguments]     ${fname}   ${lname}  ${email}  ${company}  ${phone}  ${place}
         Enter Firstname    ${fname}
         Enter Lastname     ${lname}
         Enter Email     ${email}
         Enter Company Name   ${company}
         Enter Phone Number    ${phone}
         Click Element    link=Change
         Select From List By Label    name=data-center-dropdown   ${place}
         Click Element    xpath=//input[@value='Sign up for Free']
         Run Keyword And Ignore Error   Click Element   xpath=//div[contains(text(),'First name is required']   ${expected_error}
