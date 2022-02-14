*** Settings ***
Documentation   This file contains reusable keywords

Library     SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER_NAME}         edge
${URL}     https://www.freshworks.com/hrms/login/

*** Keywords ***
Launch Browser
    Set Local Variable    ${driver}        chromedriver.exe

    IF    '${BROWSER_NAME}' == 'firefox'
        Set Local Variable    ${driver}        geckodriver.exe
    ELSE IF  '${BROWSER_NAME}' == 'edge'
        Set Local Variable    ${driver}        msedgedriver.exe
    ELSE IF  '${BROWSER_NAME}' == 'safari'
        Set Local Variable    ${driver}        safaridriver.exe
    END

    Open Browser      browser=${BROWSER_NAME}      executable_path=${EXECDIR}${/}drivers${/}${driver}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
    Go To    url=${URL}
    Click Element    id=onetrust-accept-btn-handler
    Click Element    link=Pricing
    Click Element     xpath=//a[normalize-space()='Sign Up For Free']

End Browser
    Capture Page Screenshot
    Set Selenium Implicit Wait    5s
    Close Browser

Expected Title
    ${title} Get Title
       Log To Console    ${title}
       Title Should Be    Freshman Signup


About
    ${text}  Get Text   xpath=//ul[contains(@class,'l-nav-list nav-super-menu')]//span[@class='label'][normalize-space()='About']
    Log To Console    ${text}
    Element Text Should Be     ${text}

Alert Message
     ${a}  Handle Alert   action=DISMISS   timeout=20s
     Log To Console    ${a}

