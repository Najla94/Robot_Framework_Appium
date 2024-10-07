*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}          http://localhost:4723
${AUTOMATION_NAME}        UiAutomator2
${PLATFORM_NAME}          Android
${DEVICE_NAME}            emulator-5558
${APP_PACKAGE}             com.android.settings
${APP_ACTIVITY}           com.android.settings.Settings

*** Test Cases ***
Open Application
    Open Appium Application
Screenshot
    sleep   5
    Capture Page Screenshot    screen.png

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
