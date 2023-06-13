*** Settings ***
Resource          ../../Resources/APIDemos/ApiDemosResource.robot
Suite Setup       Start Session Apps
Suite Teardown    Close Session Apps

*** Test Cases ***
As a user I want to open API Demos apps
    Check Availability of Visible Text    Accessibility
    # Tap Accessibility
    # Tap Screen With Positions    142    413
    Click Accessibility
    Sleep    1s
    Check Availability of Visible Text    Accessibility Node Provider

As a user I want to open accessibility node provider
    Tap Screen Position With One Finger    128    281
    Check Availability of Visible Text    Enable TalkBack

As a user I want to open accessibility node provider and press back
    Tap Screen Position With One Finger    128    281
    Check Availability of Visible Text    Enable TalkBack
    Press Back Button
    Check Availability of Visible Text    Accessibility Node Provider
