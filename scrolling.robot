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
   # sleep   5
    Click Element    xpath=//android.widget.TextView[@text='Notifications']
    sleep   5
    Element Should Be Visible    android= new UiScrollable(new UiSelector()).scrollIntoView(new UiSelector().text("Wireless emergency alerts"))
    Click Element    xpath=//android.widget.TextView[@text='Wireless emergency alerts']
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