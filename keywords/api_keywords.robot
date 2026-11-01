*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary

*** Keywords ***
Create API Session
    [Arguments]    ${alias}    ${base}
    Create Session    ${alias}    ${base}

GET
    [Arguments]    ${alias}    ${endpoint}
    ${resp}=    GET On Session    ${alias}    ${endpoint}
    [Return]    ${resp}

Assert Status
    [Arguments]    ${resp}    ${code}=200
    Should Be Equal As Numbers    ${resp.status_code}    ${code}
