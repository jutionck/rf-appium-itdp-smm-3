*** Settings ***
Resource       ../../Resources/Common/ComonResource.robot
Resource       ../../Resources/DietMeal/DietMealResource.robot
Suite Setup    ComonResource.Start Session Apps    
...    Android    
...    %{ANDROID_PLATFOM_VERSION=9}    
...    AOSP on IA Emulator    
...    ${CURDIR}/../../apk/Diet_meal.apk    
...    com.fghilmany.dietmealapp.ui.main.MainActivity
Suite Teardown    ComonResource.Close Session Apps

*** Test Cases ***
As a User I Want Open Apps
    [Tags]    Regression
    Wait Until Element Is Visible    com.fghilmany.dietmealapp:id/header_welcome
    ComonResource.Check Availability of Visible Text    Welcome...

As a User I Want to Input Welcome Screen Form
    [Tags]    Regression
    DietMealResource.Input Welcome Screen    Jution    78    178

As a User I Want to Choose Activity
    [Tags]    Regression
    DietMealResource.Select My Activity

As a User I Want Go To Meals Screen
    [Tags]    Regression
    Wait Until Element Is Visible    com.fghilmany.dietmealapp:id/tv_header_meal
    DietMealResource.Go To Meals Screen

As a User I Want to Select Item On Meal Screen
    [Tags]    Regression
    Wait Until Element Is Visible    com.fghilmany.dietmealapp:id/et_search
    DietMealResource.Select Item On Meal Screen

As a User I Want to Input Portion and Serving
    [Tags]    Regression
    Wait Until Element Is Visible    com.fghilmany.dietmealapp:id/tv_header_name
    DietMealResource.Input Portion and Serving on Detail Item    1    Cup

As a User I Want to Back To Screen Meal and Home
    [Tags]    Functional
    ComonResource.Press Back Button
    DietMealResource.Go To Home Screen

    


# Tugas
# - Coba buatkan test case untuk pindah screen dari `Home` ke `Meals`
# - Coba buatkan test case pada screen `Meals` kemudian pilih beberapa list boleh `Kopi` atau `Pop Ice` kemudian setelah itu isi pada field `Portion` dan `Serving`
# - Terakhir test case pada screen detail meal coba back kembali ke screen `Meals` dan `Home`




# Scalar -> $    e.g ${CURDIR} -> merujuk ke current directory
# Lis -> @
# Dictionary -> &
# Environment -> % e.g Android %{ANDROID_PLATFOM_VERSION=9} | iOS %{IOS_PLATFORM_VERSION=15}