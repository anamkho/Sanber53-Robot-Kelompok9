*** Settings ***
Library                             AppiumLibrary

*** Variables ***
${REMOTE_URL}              http://localhost:4723/wd/hub
${PLATFORM_NAME}           Android

*** Keywords ***
Open Flight Application
    Open Application       remote_url=${REMOTE_URL}    
    ...                    platformName=${PLATFORM_NAME}    
    ...                    platformVersion=14.0    
    ...                    deviceName=Google Pixel_3a   
    ...                    appPackage=com.example.myapplication    
    ...                    appActivity=com.example.myapplication.MainActivity

Click Sign In Button On Home Page
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Input valid Username
    Wait Until Element Is Visible      locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text                         locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=support@ngendigital.com

Input valid Password
    Input Text                         locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=abc123

Input invalid Username
    Wait Until Element Is Visible      locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text                         locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=salah username

Input invalid Password
    Input Text                         locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=salah password

Click Sign In Button On Login Page
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User Successfully Login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]
Verify User Is Fail To Logged In
    Wait Until Page Contains           text=Invalid username/password

Close Flight Application
    Close Application

*** Test Cases ***
Login with valid Data
    Open Flight Application
    Click Sign In Button On Home Page
    Input valid Username
    Input valid Password
    Click Sign In Button On Login Page
    Verify User Successfully Login
    Close Flight Application
Login with Invalid Data
    Open Flight Application
    Click Sign In Button On Home Page
    Input invalid Username
    Input invalid Password
    Click Sign In Button On Login Page
    Verify User Is Fail To Logged In
    Close Flight Application