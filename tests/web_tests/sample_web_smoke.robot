*** Settings ***
Suite Setup      Setup Test Environment
Suite Teardown   Teardown Test Environment
Resource         ../../resources/common.robot
Resource         ../../resources/pages/home_page.robot
Resource         ../../keywords/web_keywords.robot
Resource        ../../config/environments.robot

*** Test Cases ***
Homepage Loads
    [Tags]    smoke
    Open Web Browser    ${BASE_URL}
    Home Page Should Be Loaded
    Continue Shopping