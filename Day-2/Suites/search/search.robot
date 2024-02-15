*** Settings ***
Resource                                 ../../pageObjects/HomePage/home-page.robot
Resource                                 ../../pageObjects/LoginPage/login-page.robot
Resource                                 ../../PageObjects/SearchPage/search-page.robot

*** Test Cases ***
Valid Search 
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    login-page.Input Password
    Click Sign In Button on Login Page
    Verify User Success To Logged In
    Click Home Button search
    Input Flight Number
    Click Search Button
    Close Application

Invalid Search
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    login-page.Input Password
    Click Sign In Button on Login Page
    Verify User Success To Logged In
    Click Home Button search
    Input Invalid Flight Number
    Click Search Button
    Verify To Enter Valid Flight Number
    Close Application