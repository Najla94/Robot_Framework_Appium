*** Settings ***
Library     AppiumLibrary

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
      Input UserName and Oassword  najla@gmail.com   nn1221NN
           Capture Page Screenshot   app_screenshot.png
        Sleep    3
    Submit Search
        Sleep    2
        Click Element    //android.widget.Button[@resource-id="android:id/button1"]
    Click WebView
     Sleep    3
        Element Should Be Visible    android= new UiScrollable(new UiSelector()).scrollIntoView(new UiSelector().text("Open Source and Open Governed"))

    Sleep    3

     Go To Swipe Button
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
    Click DragAndDrop
        Sleep    1
    Drag And Drop    //android.view.ViewGroup[@content-desc="drag-c1"]   //android.view.ViewGroup[@content-desc="drop-c1"]
     Sleep    1
    Drag And Drop   //android.view.ViewGroup[@content-desc="drag-c2"]  //android.view.ViewGroup[@content-desc="drop-c2"]
     Sleep    1
    Drag And Drop    //android.view.ViewGroup[@content-desc="drag-c3"]   //android.view.ViewGroup[@content-desc="drop-c3"]
      Sleep    1
    Drag And Drop    //android.view.ViewGroup[@content-desc="drag-l1"]  //android.view.ViewGroup[@content-desc="drop-l1"]
     Sleep    1
    Drag And Drop    //android.view.ViewGroup[@content-desc="drag-l2"]  //android.view.ViewGroup[@content-desc="drop-l2"]
      Sleep    1
    Drag And Drop    //android.view.ViewGroup[@content-desc="drag-l3"]  //android.view.ViewGroup[@content-desc="drop-l3"]
      Sleep    1
    Drag And Drop    //android.view.ViewGroup[@content-desc="drag-r1"]  //android.view.ViewGroup[@content-desc="drop-r1"]
      Sleep    1
    Drag And Drop   //android.view.ViewGroup[@content-desc="drag-r2"]  //android.view.ViewGroup[@content-desc="drop-r2"]
      Sleep    1
    Drag And Drop    //android.view.ViewGroup[@content-desc="drag-r3"]  //android.view.ViewGroup[@content-desc="drop-r3"]
      Sleep    1


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


Click WebView
    Click Element    xpath=//android.widget.TextView[@text="󰖟"]

Go To Swipe Button
    Click Element    xpath=//android.view.View[@content-desc="Swipe"]

Click DragAndDrop
    Click Element    xpath=//android.widget.TextView[@text="Drag"]