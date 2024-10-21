*** Settings ***
Library    AppiumLibrary


*** Variables ***
${APPIUM_SERVER}          http://localhost:4723
${AUTOMATION_NAME}        UiAutomator2
${PLATFORM_NAME}          Android
${DEVICE_NAME}            emulator-5558
${APP_PACKAGE}             com.wdiodemoapp
${APP_ACTIVITY}           com.wdiodemoapp.MainActivity

*** Test Cases ***
Open Application
    Open Appium Application
    Click WebView
    Sleep    2

     # Locate the elements you want to drag and drop
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
Click WebView
    Click Element    xpath=//android.widget.TextView[@text="Drag"]
