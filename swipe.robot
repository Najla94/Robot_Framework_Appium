*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}          http://localhost:4723
${AUTOMATION_NAME}        UiAutomator2
${PLATFORM_NAME}          Android
${DEVICE_NAME}            emulator-5554
${APP_PACKAGE}             com.wdiodemoapp
${APP_ACTIVITY}           com.wdiodemoapp.MainActivity


${SWIPE_START_X}    100
${SWIPE_START_Y}    900
${SWIPE_END_X}      50
${SWIPE_END_Y}      100
${DURATION}         1000     # Duration of the swipe in milliseconds
${START_X_RIGHT}    50
${END_X_RIGHT}      100

*** Test Cases ***
Open Application
    Open Appium Application
        Go To Swipe Button

#            Sleep    5
#            # Swipe Down
#            Swipe    100    1000    100    100   500
#                Sleep    4
#                # Swipe Right
#            Swipe    50    1000     25   500
#                Sleep    2
#            Swipe    50    1000     25   500
#                #Swipe Left
#                Sleep    2
#            Swipe    50    1000     50   500
#                Sleep    5

    Sleep    3

# Swipe Lift to Right
    FOR    ${ELEMENT_SELECTOR}    IN RANGE    0    3
        Sleep    2
    Log    ${ELEMENT_SELECTOR}
        Swipe    ${SWIPE_START_X}    ${SWIPE_START_Y}    ${SWIPE_END_X}    ${SWIPE_END_Y}    duration=${DURATION}
    END

# Swipe Right to Lift
    FOR    ${ELEMENT_SELECTOR}    IN RANGE    0    3
        Sleep    2
    Log    ${ELEMENT_SELECTOR}

        Swipe    ${START_X_RIGHT}    ${SWIPE_START_Y}    ${END_X_RIGHT}     ${SWIPE_END_Y}     duration=${DURATION}
    END

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

Go To Swipe Button
    Click Element    xpath=//android.view.View[@content-desc="Swipe"]

