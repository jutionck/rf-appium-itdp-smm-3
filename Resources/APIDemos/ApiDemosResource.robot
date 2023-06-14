*** Settings ***
Library    AppiumLibrary
Variables    ../../PageObject/APIDemos/Locators.py

*** Variables ***
${REMOTE_URL}        http://localhost:4723/wd/hub
${PLATFORM_NAME}     Android
${PLATFORM_VERSION}  9.0
${DEVICE_NAME}       AOSP on IA Emulator
${APP}               /Users/jutioncandrakirana/Downloads/ApiDemos-debug.apk

*** Keywords ***
Start Session Apps
    Open Application    
    ...    ${REMOTE_URL}    
    ...    platformName=${PLATFORM_NAME}    
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}

Tap Screen Position With One Finger
    [Arguments]       ${X}    ${Y}
    @{coordinate}    create list    ${X}    ${Y}
    Sleep    1s
    # Ketika menggunakan Tap With Positions tidak memerlukan locators
    # Yang dibutuhkan adalah sebuah koordinat
    Tap With Positions    ${1000}    ${coordinate}

Tap Accessibility
    # TAP sudah deprecated
    Tap    ${accessBilityXpath}

Click Accessibility
    Click Element    ${accessBilityXpath}

# Cek sebuah text
Check Availability of Visible Text
    [Arguments]    ${TEXT}
    Page Should Contain Text    ${TEXT}

Press Back Button
    Press Keycode    4

Close Session Apps
    Capture Page Screenshot
    # Sebelumnya bisa menggunakan Quit Application
    Close Application