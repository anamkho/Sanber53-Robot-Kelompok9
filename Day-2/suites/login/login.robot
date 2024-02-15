*** Settings ***
Resource                               ../pageObjects/HomePage/home-page.robot
Resource                               ../pageObjects/LoginPage/login-page.robot
Resource                               ../pageObjects/base/base.robot

Test Setup                             Open Flight Application
Test Teardown                          Close Flight Application

*** Test Cases ***
Login with Invalid Data
    home-page.Click Sign In Button On Home Page
    login-page.Input Username
    login-page.Input Password
    login-page.Click Sign In Button On Login Page
    login-page.Verify User Success To Logged In