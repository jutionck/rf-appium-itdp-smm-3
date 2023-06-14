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
    Click Element    ${viewItemElement}

As a User I Want Pinch and Zoom Item
    &{scrollGesture}    create dictionary    left=${1000}    top=${545}    width=${200}    height=${200}    percent=${0.75}
    Sleep               1                  
    Execute Script      mobile: pinchOpenGesture    &{scrollGesture}
    Sleep    3

# As a User I Want View Item Detail and Add To Cart
#     &{scrollGesture}    create dictionary    left=${368}    top=${545}    width=${150}    height=${200}    percent=${1.0} 
#     Sleep               1                  
#     Execute Script      mobile: pinchOpenGesture    &{scrollGesture}
#     Sleep    2
#     Capture Page Screenshot
#     Swipe    500    767    300    300
#     Sleep    1
#     Click Element    ${addToCartElement}
#     Click Element    ${backToProductFromDetailElement}
#     Sleep    1
#     Click Element    ${chartElement}

# # As a User I Want to Buy Item
# #     Sleep    1
# #     Click Element    ${addToCartElement}
# #     Sleep    1
# #     Click Element    ${chartElement}
# #     Capture Page Screenshot

# As a User I Want to Delete Item on Cart    
#     Sleep    1
#     Swipe    500    767    -300    0
#     Click Element    ${deleteItemElement}
#     Sleep    1
#     Click Element    ${continueShoopingElement}
#     Capture Page Screenshot

# As A User I Want To Buy and Checkout
#     Sleep    1
#     Click Element    ${addToCartElement}
#     Sleep    1
#     Click Element    ${chartElement}
#     Sleep    1
#     Click Element    ${checkoutBtnElement}
#     Sleep    1
#     Input Text    ${firstNameCheckoutElement}    Jution
#     Input Text    ${lastNameCheckoutElement}     Kirana
#     Input Text    ${postalCodeCheckoutElement}   12551
#     Click Element    ${continueCheckoutElement}
#     Sleep    1
#     Swipe    500    1500    500    500    1000
#     Sleep    1
#     Click Element    ${finishCheckoutElement}
#     Sleep    1
#     Page Should Contain Text    ${completeCheckout}

# As a User I Want Buy With Drag Item To Cart
#     Sleep    1
#      &{dragGesture}    create dictionary    startX=${94}    startY=${1455}    endX=${500}    endY=${333}
#     Sleep               2 
#     Execute Script      mobile: dragGesture    &{dragGesture}