*** Settings ***
Documentation   This file handles all the operations in the login page of freshteam


Resource  ../base/common_functionality.resource

*** Variables ***
${FNAME_LOCATOR}     name=first-name
${LNAME_LOCATOR}      name=last-name
${EMAIL_LOCATOR}      name=email
${COMPANY_LOCATOR}    name=company
${PHONE_LOCATOR}       name=phone
${CLICK_LOCATOR}      link=Change
${PLACE_LOCATOR}      name=data-center-dropdown
${LOGIN_LOCATOR}      xpath=//input[@value='Sign up for Free']
${ERROR_LOCATOR}      xpath=//div[contains(text(),'First name is required']


*** Keywords ***
Enter Firstname
    [Arguments]   ${fname}
    Input Text       ${FNAME_LOCATOR}   ${fname}

Enter Lastname
     [Arguments]    ${lname}
     Input Text    ${LNAME_LOCATOR}   ${lname}

Enter Email
     [Arguments]     ${email}
     Input Text    ${EMAIL_LOCATOR}    ${email}

Enter Company Name
     [Arguments]   ${company}
     Input Text    ${COMPANY_LOCATOR}  ${company}


Enter Phone Number
      [Arguments]  ${phone}
      Input Text    ${PHONE_LOCATOR}    ${phone}

Click
     [Arguments]    ${CLICK_LOCATOR}

Enter Place
      [Arguments]    ${place}
      Select From List By Label    ${PLACE_LOCATOR}   ${place}


Invalid Error Message
    [Arguments]   ${expected_error}
    Element Should Contain    ${ERROR_LOCATOR}   ${expected_error}
