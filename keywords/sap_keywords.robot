
        *** Settings ***
        Library    SapGuiLibrary    screenshots_on_error=True    screenshot_directory=./screenshots/
        Library    Process

        *** Variables ***
        ${SAP_EXE}    C:\\Program Files (x86)\\SAP\\FrontEnd\\SAPgui\\saplogon.exe
        ${WIN_0}      /app/con[0]/ses[0]/wnd[0]

        *** Keywords ***
        Launch SAP GUI
            [Arguments]    ${wait}=5
            Start Process    ${SAP_EXE}
            Sleep           ${wait}

        Connect To SAP
            [Arguments]    ${connection}
            Connect To Session
            Open Connection    ${connection}
            Maximize Window    0

        Login To SAP
            [Arguments]    ${user}    ${pw}
            Input Text       ${WIN_0}/usr/txtRSYST-BNAME    ${user}
            Input Password   ${WIN_0}/usr/pwdRSYST-BCODE    ${pw}
            Click Element    ${WIN_0}/tbar[0]/btn[0]
