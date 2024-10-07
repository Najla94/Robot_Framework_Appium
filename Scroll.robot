*** Settings ***
Library    AppiumLibrary
Library    XML

*** Variables ***
${APPIUM_SERVER}          http://localhost:4723
${AUTOMATION_NAME}        UiAutomator2
${PLATFORM_NAME}          Android
${DEVICE_NAME}            emulator-5558
${APP_PACKAGE}             com.android.settings
${APP_ACTIVITY}           com.android.settings.Settings
${TextOfScrolling}       AndroidDevices=UiSelector().description("Settings")
${text}            //android.widget.RelativeLayout[@resource-id="com.android.settings:id/text_frame"])[7]
*** Test Cases ***
Open App ID CARD
    Open Appium Application
#    Input UserName and Oassword  standard_user    secret_sauce
#    Submit Search
# the instraction for work with loop
   Element Should Be Visible After Scrolling    ${TextOfScrolling}

   Wait Until Element Is Visible    ${TextOfScrolling}
   Click Element    ${TextOfScrolling}
     Wait Until Element Is Visible    ${text}    10 seconds
    Element Text Should Be    ${text}    System
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
#Input UserName and Oassword
#     [Arguments]    ${user}      ${pass}
#    Input Text     xpath=//android.widget.EditText[@content-desc="test-Username"]  ${user}
#    Input Text     xpath=//android.widget.EditText[@content-desc="test-Password"]  ${pass}
#
#Submit Search
#    Click Element    xpath=//android.view.ViewGroup[@content-desc="test-LOGIN"]

#Scrolling the page with use loop
Element Should Be Visible After Scrolling
    [Arguments]    ${locator}
    ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${locator}
    WHILE    '${is_visible}' == 'False'
        Flick	100	400	100	100
        ${is_visible}=  Run Keyword And Return Status    Element Should Be Visible    ${locator}
    END

