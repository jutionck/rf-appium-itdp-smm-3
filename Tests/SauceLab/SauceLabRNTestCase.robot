*** Settings ***
Library      AppiumLibrary
Variables    ../../PageObject/SauceLab/Locators.py

*** Variables ***
${REMOTE_URL}        http://localhost:4723
${PLATFORM_NAME}     Android
${PLATFORM_VERSION}  9.0
${DEVICE_NAME}       AOSP on IA Emulator
${APP}               /Users/jutioncandrakirana/Downloads/SauceLabRN.apk
${AUTOMATION_NAME}   UIAutomator2

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
    ...    automationName=${AUTOMATION_NAME}
    Wait Until Element Is Visible    ${productsHeader}

As a User I Want To Buy Product
    Click Element    ${sauceLabBackpack}
    Sleep    1
    Click Element    ${colorRed}
    Sleep    1
    Click Element    ${counterPlus}
    Click Element    ${counterPlus}
    Sleep    1
    Click Element    ${addToCart}
    Sleep    1
    Click Element    ${iconCart}
    Sleep    1
    Click Element    ${counterPlus}
    Sleep    1
    Click Element    ${proceedCheckout}
    Sleep    1
    Click Element    ${autoFillAccount}
    Sleep    1
    Click Element    ${loginBtn}
    Sleep    1
    Input Text    ${fullNameField}    Jution Candra Kirana
    Sleep    1
    Input Text    ${addressField}    Jl. Kp Utan No 12
    Sleep    1
    Input Text    ${cityField}    Jakarta Selatan
    Sleep    1
    Input Text    ${stateField}    DKI Jakarta
    Sleep    1
    Input Text    ${zipCodeField}    12550
    Sleep    1
    Input Text    ${countryField}    Indonesia
    Sleep    1
    Click Element    ${btnToPayment}
    Sleep    1
    Input Text    ${fullNameField}    Jution Candra Kirana
    Sleep    1
    Input Text    ${cardNumberField}    325812657568789
    Sleep    1
    Input Text    ${expiredDateField}    0325
    Sleep    1
    Input Text    ${securityCodeField}    123
    Sleep    1
    Click Element    ${btnReviewOrder}
    Sleep    1
    Swipe    521    1330    100    0    1000
    Click Element    ${btnPlaceOrder}
    Sleep    1
    Sleep    1
    Click Element    ${btnContinueShopping}
    Sleep    1
    Wait Until Element Is Visible    ${productsHeader}
