*** Settings ***
Suite Setup      Setup Test Environment
Suite Teardown   Teardown Test Environment
Resource         ../../resources/common.robot
Resource         ../../keywords/api_keywords.robot
Resource        ../../config/environments.robot

*** Test Cases ***
GET List Users
    [Tags]    smoke    api
    Create API Session    default    ${API_BASE}
    ${resp}=    GET    default    /users
    Assert Status     ${resp}    200
