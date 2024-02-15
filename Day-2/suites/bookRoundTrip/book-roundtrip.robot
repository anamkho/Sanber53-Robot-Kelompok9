*** Settings ***
Resource        ../../pageObjects/HomePage/home-page.robot
Resource        ../../pageObjects/LoginPage/login-page.robot
Resource        ../../pageObjects/BookPage/book-roundtrip-page.robot
Test Setup        Open Flight Application
Test Teardown     Close Flight Application


*** Test Cases ***
# with checkbox Day
Book: Round Trip > From City > To City > Class First > Start Date > End Date > Flight Only > Checkbox Day
    home-page.Click Sign In Button On Home Page
    login-page.Input Username
    login-page.Input Password
    login-page.Click Sign In Button on Login Page
    login-page.Verify User Success To Logged In
    book-roundtrip-page.Open Book
    Wait Until Element Is Visible    ${round-trip-action}
    book-roundtrip-page.Choose Round-trip Flight
    book-roundtrip-page.Choose From City Chicago
    book-roundtrip-page.Choose To City Paris
    book-roundtrip-page.Choose Class First
    book-roundtrip-page.Choose Start Date
    book-roundtrip-page.Choose End Date
    book-roundtrip-page.Choose Flight Only
    book-roundtrip-page.Choose Checkbox Day
    book-roundtrip-page.Submit Book
    book-roundtrip-page.Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked. Reservation number is CADX2214")]

# without checkbox Day
Book: Round Trip > From City > To City > Class First > Start Date > End Date > Flight Only
    home-page.Click Sign In Button On Home Page
    login-page.Input Username
    login-page.Input Password
    login-page.Click Sign In Button on Login Page
    login-page.Verify User Success To Logged In
    book-roundtrip-page.Open Book
    Wait Until Element Is Visible    ${round-trip-action}
    book-roundtrip-page.Choose Round-trip Flight
    book-roundtrip-page.Choose From City Toronto
    book-roundtrip-page.Choose To City Ottawa
    book-roundtrip-page.Choose Class Bussiness
    book-roundtrip-page.Choose Start Date
    book-roundtrip-page.Choose End Date
    book-roundtrip-page.Choose Flight and Hotel
    book-roundtrip-page.Submit Book
    book-roundtrip-page.Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked. Reservation number is CADX2214")]