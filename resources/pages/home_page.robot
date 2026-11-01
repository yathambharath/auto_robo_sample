*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME_PAGE_BODY}                css:body
${CONTINUE_SHOPPING_BUTTON}      xpath://button[normalize-space(.)='Continue shopping']

*** Keywords ***
Home Page Should Be Loaded
    Page Should Contain Element    ${HOME_PAGE_BODY}
    Wait Until Page Contains Element    ${CONTINUE_SHOPPING_BUTTON}

Continue Shopping
    Click Button    ${CONTINUE_SHOPPING_BUTTON}