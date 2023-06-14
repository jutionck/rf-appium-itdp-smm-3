*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Start Session Apps
    [Arguments]    
    ...    ${platformName}    
    ...    ${platformVersion}    
    ...    ${deviceName}    
    ...    ${app}
    ...    ${appActivity}
    Open Application    
    ...    http://localhost:4723/wd/hub    
    ...    platformName=${platformName}    
    ...    platformVersion=${platformVersion}
    ...    deviceName=${deviceName}
    ...    app=${app}
    ...    appActivity=${appActivity}

Tap Screen Position With One Finger
    [Arguments]       ${X}    ${Y}
    @{coordinate}    create list    ${X}    ${Y}
    Sleep    1s
    Tap With Positions    ${1000}    ${coordinate}

# Cek sebuah text
Check Availability of Visible Text
    [Arguments]    ${text}
    Page Should Contain text    ${TEXT}

Press Back Button
    Press Keycode    4

Close Session Apps
    Capture Page Screenshot
    Close Application