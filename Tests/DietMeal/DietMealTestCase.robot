*** Settings ***
Resource          ../../Resources/DietMeal/DietMealResource.robot
Suite Setup       Start Session Apps
Suite Teardown    End Session Apps


*** Test Cases ***
As a user I want to open Diet Meal apps
    Sleep    5
    Check Availability of Visible Text    Welcome...

As a user I want to input welcome form
    Input Welcome Form    Jution Candra Kirana    78    180
    Sleep    1
    Select Activity

As a user I want to Scroll Daily Meal
    Sleep    1
    Scroll Down My Screen
    Sleep    1
    Scroll Up My Screen

As a user I want to See Profile Screen
    Go Profile Screen
    Sleep    1
    Search Profile    far
    Check Availability of Visible Text    far