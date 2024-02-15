*** Settings ***
Resource                               ../base/base.robot
Variables                              login-locator.yaml

*** Keywords ***
Input Username
    Wait Until Element Is Visible      locator=${username_input}
    Input Text                         locator=${username_input}    text=support@ngendigita.com

Input Password
    Input Text                         locator=${password_input}    text=abc123

Click Sign In Button On Login Page
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User Success To Logged In
    Wait Until Element Is Visible      ${text_view}