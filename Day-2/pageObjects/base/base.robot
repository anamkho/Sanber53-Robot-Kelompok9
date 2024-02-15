*** Settings ***
Library                    AppiumLibrary

*** Variables ***
${REMOTE_URL}              http://localhost:4723/wd/hub
${PLATFORM_NAME}           Android
${PLATFORM_VERSION}        12.0
${DEVICE_NAME}             emulator-5554


*** Keywords ***
Open Flight Application
    Open Application       remote_url=${REMOTE_URL}   
    ...                    platformName=${PLATFORM_NAME} 
    ...                    platformVersion=${PLATFORM_VERSION}
    ...                    deviceName=${DEVICE_NAME}
    ...                    appPackage=com.example.myapplication    
    ...                    appActivity=com.example.myapplication.MainActivity

Close Flight Application
    Close Application