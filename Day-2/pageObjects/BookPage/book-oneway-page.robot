*** Settings ***
Resource             ../base/base.robot
Variables            book-locator.yaml

*** Keywords ***
Open Book
    Click Element    ${book-button}

Choose One-way Flight
    Click Element    ${one-way-action}

Choose From City Newyork
    Click Element    ${from-city-spinner}
    Wait Until Element Is Visible    ${newyork}
    Click Element    ${newyork}

Choose To City London
    Click Element    ${to-city-spinner}
    Wait Until Element Is Visible    ${london}
    Click Element    ${london}
Choose Class Economy
    Click Element    ${class-spinner}
    Wait Until Element Is Visible    ${economy}
    Click Element    ${economy}

Choose Start Date
    Click Element    ${start-date}
    Wait Until Element Is Visible    ${date-picker}
    Click Element    ${date-picker}
    Wait Until Element Is Visible    ${year-picker}
    Click Element    ${year-picker}
    Wait Until Element Is Visible    ${01-aug}
    Click Element    ${01-aug}
    Click Element    ${date-ok-button}

Choose End Date
    Click Element    ${start-date}
    Wait Until Element Is Visible    ${date-picker}
    Click Element    ${date-picker}
    Wait Until Element Is Visible    ${year-picker}
    Click Element    ${year-picker}
    Wait Until Element Is Visible    ${31-aug}
    Click Element    ${31-aug}
    Click Element    ${date-ok-button}

Choose Flight Only
    Wait Until Element Is Visible    ${flight-radio-button}
    Click Element    ${flight-radio-button}

Choose Flight and Hotel 
    Wait Until Element Is Visible    ${flight-hotel-radio-button}
    Click Element    ${flight-hotel-radio-button}

Choose Checkbox Day
    Wait Until Element Is Visible    ${checkbox-day}
    Click Element    ${checkbox-day}

Submit Book
    Click Element    ${submit-book-button}

Choose and Confirm Price
    Wait Until Element Is Visible    ${choose-price-button}
    Click Element    ${choose-price-button}
    Click Element    ${confirm-button}