*** Settings ***
Documentation   this file contains about the website

Resource  ../base/common_functionality.resource

*** Keywords ***
  [Arguments]  ${text}
  Element Text Should Be    ${text}
  Log    ${text}

