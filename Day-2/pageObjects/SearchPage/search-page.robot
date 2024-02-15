*** Settings ***
Library                                  AppiumLibrary
Variables                                search-locator.yaml

*** Keywords ***

Click Home Button search
    Wait Until Element Is Visible        locator=${se_btn}
    Click Element                        locator=${se_btn}

Input Flight Number
    Wait Until Element Is Visible        locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]
    Input Text                           locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]     text=DA935

Click Search Button
    Click Element                        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]

Input Invalid Flight Number
    Wait Until Element Is Visible        locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]
    Input Text                           locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]     text=ABCDE

Verify To Enter Valid Flight Number
    Wait Until Page Contains             ${toast}