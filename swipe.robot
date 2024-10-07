*** Settings ***
Library    AppiumLibrary


*** Variables ***
${APPIUM_SERVER}          http://localhost:4723
${AUTOMATION_NAME}        UiAutomator2
${PLATFORM_NAME}          Android
${DEVICE_NAME}            emulator-5558
${APP_PACKAGE}             com.android.settings
${APP_ACTIVITY}           com.android.settings.Settings
#${fragement}         xpath=//android.widget.TextView[@text='System']

*** Test Cases ***
Open App ID CARD
    Open Appium Application
#Swipe Down
     Swipe    100  1000  100  100  1000
#   Wait
     Sleep    1
# Swipe UP
    Swipe    100  100  100  1000  1000

#    Swipe Down    ${fragement}



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

#Swipe Down
#    [Arguments]       ${fragement}
#    ${element_size}=    Get Element Size    id=${fragement}
#    ${element_location}=    Get Element Location    id=${fragement}
#    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
#    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
#    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
#    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
#    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
#    Sleep  1

