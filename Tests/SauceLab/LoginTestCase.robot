*** Settings ***
Library      AppiumLibrary
Variables    ../../PageObject/SauceLab/Locators.py

*** Variables ***
${REMOTE_URL}        http://localhost:4723/wd/hub
${PLATFORM_NAME}     Android
${PLATFORM_VERSION}  9.0
${DEVICE_NAME}       AOSP on IA Emulator
${APP}               /Users/jutioncandrakirana/Downloads/SauceLabDemo.apk
${APP_ACTIVITY}      com.swaglabsmobileapp.MainActivity

*** Test Cases ***
As a User I Want Open Sauce Lab Apps
    [Tags]    Regression
    Open Application    
    ...    ${REMOTE_URL}    
    ...    platformName=${PLATFORM_NAME}    
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}
    ...    noRest=${True}
    ...    appActivity=${APP_ACTIVITY}
    Sleep    1s

As a User I Want To Login 
    Input Text        ${usernameElement}    ${username}
    Input Password    ${passwordElement}    ${password}
    Click Element    ${loginBtnElement}

As a User I Want to Choose Item
    Sleep    1
    Click Element    //android.view.ViewGroup[@content-desc="test-Item"][1]/android.view.ViewGroup/android.widget.ImageView