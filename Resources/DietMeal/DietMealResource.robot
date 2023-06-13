*** Settings ***
Variables    ../../PageObject/DietMeal/Locators.py
Library      AppiumLibrary


*** Variables ***
${REMOTE_URL}        http://localhost:4723/wd/hub
${PLATFORM_NAME}     Android
${PLATFORM_VERSION}  9.0
${DEVICE_NAME}       AOSP on IA Emulator
${APP}               /Users/jutioncandrakirana/Downloads/Diet_meal.apk

*** Keywords ***
Start Session Apps
    Open Application    
    ...    ${REMOTE_URL}    
    ...    platformName=${PLATFORM_NAME}    
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}

Input Welcome Form
    [Arguments]    ${name}    ${weight}    ${height}
    Input Text    ${inputNameWelcomeXpath}      ${name}    
    Input Text    ${inputWeightWelcomeXpath}    ${weight}    
    Input Text    ${inputHeightWelcomeXpath}    ${height}
    Click Element    ${radioBtnMaleWelcomeXpath}
    Click Element    ${btnNextWelcomeXpath}

Select Activity
    Click Element    ${radioBtnClimbingXpath}
    Click Element    ${btnFinishActivityXpath}

Check Availability of Visible Text
    [Arguments]    ${TEXT}
    Page Should Contain Text    ${TEXT}

Scroll Down My Screen
    Swipe    500    1500    500    500    1000

Scroll Up My Screen
    Swipe    500    500    500    1500    1000

Go Home Screen
    Click Element    ${navigationHomeXpath}

Go Meals Screen
    Click Element    ${navigationMealsXpath}

Go Profile Screen
    Click Element    ${navigationProfileXpath}

Search Profile
    [Arguments]    ${name}
    Input Text    ${inputSearchXpath}    ${name}

Back Button
    Press Keycode    4

End Session Apps
    Capture Page Screenshot
    Close Application