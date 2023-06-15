*** Settings ***
Variables   ../../PageObject/DietMeal/Locators.py
Library     AppiumLibrary

*** Keywords ***
Input Welcome Screen
    [Arguments]      ${name}    ${weight}     ${height}
    Input Text       ${inputNameElement}      ${name}
    Input Text       ${inputWeightElement}    ${weight}
    Input Text       ${inputHeightElement}    ${height}
    Click Element    ${inputGenderMaleElement}
    Click Element    ${btnNextElement}

Select My Activity
    Click Element    ${optionActivitySchoolElement}
    Click Element    ${btnFinishElement}

Go To Home Screen
    Click Element    ${navigationHomeElement}

Go To Meals Screen
    Click Element    ${navigationMealsElement}

Go To Profile Screen
    Click Element    ${navigationProfileElement}

Select Item On Meal Screen
    Click Element    ${listItemOnMealScreenElement}

Input Portion and Serving on Detail Item
    [Arguments]    ${portion}    ${serving}
    Input Text    ${portionOnMealScreenElement}    ${portion}
    Input Text    ${servingOnMealScreenElement}    ${serving}

Search Profile
    [Arguments]    ${name}
    Input Text     ${searchPersonOnProfileScreenElement}    ${name}