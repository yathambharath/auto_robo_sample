*** Settings ***
Suite Setup      Setup Test Environment
Suite Teardown   Teardown Test Environment
Resource         ../../resources/common.robot
Resource         ../../keywords/sap_keywords.robot
Resource        ../../config/environments.robot

*** Test Cases ***
SAP Login Smoke
    [Tags]    smoke
    Launch SAP GUI
    Connect To SAP    ${SAP_SERVER}
    Login To SAP      ${USERNAME}    ${PASSWORD}
