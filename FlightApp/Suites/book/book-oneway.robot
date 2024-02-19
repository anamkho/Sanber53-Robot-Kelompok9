*** Settings ***
Resource                                                ../../pageObjects/HomePage/home-page.robot
Resource                                                ../../pageObjects/LoginPage/login-page.robot
Resource                                                ../../pageObjects/BookPage/book-oneway-page.robot
Test Setup                                              Open Flight Application
Test Teardown                                           Close Flight Application

*** Test Cases ***
#Blank fill start-date
Book Oneway Flight Only Blank Fill Start-date
    home-page.Click Sign In Button On Home Page
    login-page.Input Username
    login-page.Input Password
    login-page.Click Sign In Button on Login Page
    login-page.Verify User Success To Logged In
    book-oneway-page.Open Book
    Wait Until Element Is Visible                        ${one-way-action}
    book-oneway-page.Choose One-way Flight
    book-oneway-page.Choose From City New York
    book-oneway-page.Choose To City London
    book-oneway-page.Choose Class First
    book-oneway-page.Choose End Date
    book-oneway-page.Choose Flight Only
    book-oneway-page.Choose Checkbox Day
    book-oneway-page.Click Book Button
    book-oneway-page.Choose Price
    book-oneway-page.Click Confirm Button
    Wait Until Page Contains Element                      xpath=//*[contains(@text, "Your flight is booked. Reservation number is CADX2214")]

#Blank fill end-date
Book Oneway Flight Only Blank Fill End-date
    home-page.Click Sign In Button On Home Page
    login-page.Input Username
    login-page.Input Password
    login-page.Click Sign In Button on Login Page
    login-page.Verify User Success To Logged In
    book-oneway-page.Open Book
    Wait Until Element Is Visible                        ${one-way-action}
    book-oneway-page.Choose One-way Flight
    book-oneway-page.Choose From City New York
    book-oneway-page.Choose To City London
    book-oneway-page.Choose Class First
    book-oneway-page.Choose Start Date
    book-oneway-page.Choose Flight Only
    book-oneway-page.Choose Checkbox Day
    book-oneway-page.Click Book Button
    book-oneway-page.Choose Price
    book-oneway-page.Click Confirm Button
    Wait Until Page Contains Element                      xpath=//*[contains(@text, "Your flight is booked. Reservation number is CADX2214")]

# With checkbox +/- 1 Day
Book Oneway Flight Only With Checkbox Day
    home-page.Click Sign In Button On Home Page
    login-page.Input Username
    login-page.Input Password
    login-page.Click Sign In Button on Login Page
    login-page.Verify User Success To Logged In
    book-oneway-page.Open Book
    Wait Until Element Is Visible                        ${one-way-action}
    book-oneway-page.Choose One-way Flight
    book-oneway-page.Choose From City New York
    book-oneway-page.Choose To City London
    book-oneway-page.Choose Class First
    book-oneway-page.Choose Start Date
    book-oneway-page.Choose End Date
    book-oneway-page.Choose Flight Only
    book-oneway-page.Choose Checkbox Day
    book-oneway-page.Click Book Button
    book-oneway-page.Choose Price
    book-oneway-page.Click Confirm Button
    Wait Until Page Contains Element                      xpath=//*[contains(@text, "Your flight is booked. Reservation number is CADX2214")]

# Without Checkbox +/- 1 Day
Book Oneway Flight Only Without Checkbox Day
    home-page.Click Sign In Button On Home Page
    login-page.Input Username
    login-page.Input Password
    login-page.Click Sign In Button on Login Page
    login-page.Verify User Success To Logged In
    book-oneway-page.Open Book
    Wait Until Element Is Visible                         ${one-way-action}
    book-oneway-page.Choose One-way Flight
    book-oneway-page.Choose From City Chicago
    book-oneway-page.Choose To City Paris
    book-oneway-page.Choose Class Economy
    book-oneway-page.Choose Start Date
    book-oneway-page.Choose End Date
    book-oneway-page.Choose Flight and Hotel
    book-oneway-page.Click Book Button
    book-oneway-page.Choose Price
    book-oneway-page.Click Confirm Button
    Wait Until Page Contains Element                      xpath=//*[contains(@text, "Your flight is booked. Reservation number is CADX2214")]

    # Flight And Hotel With checkbox +/- 1 Day
Book Oneway Flight And Hotel With Checkbox Day
    home-page.Click Sign In Button On Home Page
    login-page.Input Username
    login-page.Input Password
    login-page.Click Sign In Button on Login Page
    login-page.Verify User Success To Logged In
    book-oneway-page.Open Book
    Wait Until Element Is Visible                        ${one-way-action}
    book-oneway-page.Choose One-way Flight
    book-oneway-page.Choose From City New York
    book-oneway-page.Choose To City London
    book-oneway-page.Choose Class First
    book-oneway-page.Choose Start Date
    book-oneway-page.Choose End Date
    book-oneway-page.Choose Flight and Hotel
    book-oneway-page.Choose Checkbox Day
    book-oneway-page.Click Book Button
    book-oneway-page.Choose Price
    book-oneway-page.Click Confirm Button
    Wait Until Page Contains Element                      xpath=//*[contains(@text, "Your flight is booked. Reservation number is CADX2214")]



