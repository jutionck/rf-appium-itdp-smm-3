*** Settings ***
Library    AppiumLibrary
Variables    ../../PageObject/SauceLabs/Locators.py
Resource    ../../Resources/Common/ComonResource.robot
Suite Setup    Start Session Apps    
...    Android    
...    %{ANDROID_PLATFOM_VERSION=9}    
...    AOSP on IA Emulator  
...    ${CURDIR}/../../apk/SauceLabDemo.apk
...    com.swaglabsmobileapp.MainActivity
...    UiAutomator2
Suite Teardown    Close Session Apps

*** Test Cases ***
As a User I Want to Login
    Wait Until Element Is Visible    ${loginImage}
    Input Text        accessibility_id=${usernameField}    standard_user
    Input Password    accessibility_id=${passwordField}    secret_sauce
    Click Element     accessibility_id=${btnLogin}

As a User I Want To Buy Item Then Remove Item With Swipe Left
    Sleep    1
    Click Element    ${btnAddToCart}
    Sleep    1
    Click Element    ${iconCart}
    Sleep    1
    Swipe    802    837    400    0    500
    Sleep    1
    Click Element    ${btnRemoveSwipe}
    Sleep    1

As A User I Want To Continue Shooping
    Click Element    accessibility_id=${btnContinueShopping}
    Sleep    1

As A User I Want to Show Menu With Swipe Right
    Swipe    24    695    700    500    500
    Sleep    1
    Press Keycode    4

As A User I Want to Change The List Item View Row
    Click Element    ${btnToogleViewItem}

As A User I Want to Add Item To Cart With Drag
    Sleep    1
    # Create Dictionary Coordinate
    &{dragGesture}    Create Dictionary    startX=${934}    startY=${719}    endX=${576}    endY=${316}
    Sleep    1
    Execute Script    mobile: dragGesture    &{dragGesture}
    Sleep    1

As A User I Want to Pinch and Zoom Item
    Sleep    1
    Click Element    ${btnToogleViewItem}
    Sleep    1
    Click Element    ${viewItem}
    Sleep    1
    # Create Dictionary Coordinate
    &{pinchOpenGesture}    Create Dictionary    left=${510}    top=${510}    width=${510}    height=${510}    percent=${0.75}
    Sleep    1
    Execute Script    mobile: pinchOpenGesture    &{pinchOpenGesture}
    Sleep    1

As A User I Want to Open Webview
    Sleep    1
    Press Keycode    4
    Swipe    24    695    700    500    500
    Sleep    1
    &{clickGesture}    Create Dictionary    x=${198}    y=${504}
    Sleep    1
    Execute Script    mobile: clickGesture    &{clickGesture}
    Sleep    1
    Input Text    ${urlField}    www.google.com
    Click Element    ${btnGoSite}
    Sleep    6
    Capture Page Screenshot
    Input Text    id=${googleSearchField}    Enigma Camp
    Click Element    id=${btnSearchGoogle}
    Sleep    1
    Page Should Contain Text    Enigma Camp
    Capture Page Screenshot

