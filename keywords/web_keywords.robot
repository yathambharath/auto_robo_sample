*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${TIMEOUT}    10

*** Keywords ***
Open Web Browser
    [Arguments]    ${url}
    Open Browser    ${url}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    ${TIMEOUT}
