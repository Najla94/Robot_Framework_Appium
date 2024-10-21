*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}          http://localhost:4723
${AUTOMATION_NAME}        UiAutomator2
${PLATFORM_NAME}          Android
${DEVICE_NAME}            emulator-5554
${APP_PACKAGE}             com.wdiodemoapp
${APP_ACTIVITY}           com.wdiodemoapp.MainActivity

*** Test Cases ***
Open Application
    Open Appium Application
    Input UserName and Oassword  najla@gmail.com   nn1221NN
    Submit Search

    sleep   1
    Close Application

*** Keywords ***
Open Appium Application
    [Arguments]    ${server}=${APPIUM_SERVER}    ${automation}=${AUTOMATION_NAME}    ${platform}=${PLATFORM_NAME}     ${device}=${DEVICE_NAME}    ${package}=${APP_PACKAGE}    ${activity}=${APP_ACTIVITY}
    Open Application
    ...    ${server}
    ...    automationName=${automation}
    ...    platformName=${platform}
    ...    deviceName=${device}
    ...    appPackage=${package}
    ...    appActivity=${activity}
Input UserName and Oassword
    [Arguments]  ${user}  ${pass}
    Click Element    xpath=//android.widget.TextView[@text="󰍂"]
    Sleep    1
    Input Text     xpath=//android.widget.EditText[@content-desc="input-email"]  ${user}
    Input Text     xpath= //android.widget.EditText[@content-desc="input-password"]   ${pass}
    Sleep    1
Submit Search
   Click Element    xpath=//android.view.ViewGroup[@content-desc="button-LOGIN"]/android.view.ViewGroup


