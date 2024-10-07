*** Settings ***
Library    AppiumLibrary
#Test Setup  Open app
#Suite Teardown    Close All Applications
#*** Variables ***
#${PlatForm_Name}   Android
#${platformVersion}   15
#${automationName}   UiAutomator2
#${deviceName}   sdk_gphone64_x86_64
#${url}   http://127.0.0.1:4723

*** Variables ***
${APPIUM_SERVER}          http://localhost:4723
${AUTOMATION_NAME}        UiAutomator2
${PLATFORM_NAME}          Android
${DEVICE_NAME}            sdk_gphone64_x86_64
${APP_PACKAGE}            com.google.android.apps.nexuslauncher
${APP_ACTIVITY}           com.google.android.apps.nexuslauncher.NexusLauncherActivity
*** Test Cases ***

Open App ID CARD
    Open Appium Application

#should testing to
        #Open Application   http://127.0.0.1:4723   automationName=UiAutomator2  platformName=Android   platformversion=15   deviceName=sdk_gphone64_x86_64   appActivety= com.google.android.youtube.HomeActivity
      #  IMPLICIT WAIT    5    TAKE PERCY="screenshot_name"
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


