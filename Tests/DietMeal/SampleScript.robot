*** Settings ***
Library   AppiumLibrary

*** Variables ***
${REMOTE_URL}        http://localhost:4723/wd/hub
${PLATFORM_NAME}     Android
${PLATFORM_VERSION}  9.0
${DEVICE_NAME}       AOSP on IA Emulator
${APP}               /Users/jutioncandrakirana/Downloads/Diet_meal.apk

*** Test Cases ***
Test Input Daily Meal
    [Tags]    Regression
    Open Application    
    ...    ${REMOTE_URL}    
    ...    platformName=${PLATFORM_NAME}    
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}
    Sleep    5s
    # Screen 1
    Input Text    com.fghilmany.dietmealapp:id/et_name    Jution Candra Kirana
    Capture Page Screenshot
    Close Application