*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${SS_DIR}      ${EXECDIR}${/}screenshots
${RESULTS}     ${EXECDIR}${/}results

*** Keywords ***
Setup Test Environment
    Create Directory    ${SS_DIR}
    Create Directory    ${RESULTS}
    Set Screenshot Directory    ${SS_DIR}

Teardown Test Environment
    Close All Browsers
