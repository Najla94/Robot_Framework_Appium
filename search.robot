*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}          http://localhost:4723
${AUTOMATION_NAME}        UiAutomator2
${PLATFORM_NAME}          Android
${DEVICE_NAME}            emulator-5558
${APP_PACKAGE}            com.android.settings
${APP_ACTIVITY}            com.android.settings.Settings
#${swipeButton}        //android.widget.RelativeLayout[@resource-id="com.android.settings:id/text_frame"])[7]
#${swipeText}          //android.widget.TextView[@text="Swipe horizontal"]
#${swipeElement}       //android.view.ViewGroup[@content-desc="Carousel"]
*** Test Cases ***

Open App ID CARD
    Open Appium Application
    Swiping down
#   Input Search Query  Hello World!
   #Submit Search

#swipe test
#
#    Wait Until Element Is Visible    ${swipeButton}    10 seconds
#    Click Element    ${swipeButton}
#    Wait Until Element Is Visible    ${swipeText}    10 seconds
#    Element Should Be Visible After Swiping    ${swipeElement}
    Sleep    5
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

#Swiping down
#
#    ${element_size}=    Get Element Size    xpath= //android.widget.RelativeLayout[@resource-id="com.android.settings:id/text_frame"])[7]
#    ${element_location}=    Get Element Location    xpath=//android.widget.RelativeLayout[@resource-id="com.android.settings:id/text_frame"])[7]
#      Sleep    5
#    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
#    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
#    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
#    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
#    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y} 500
#      Sleep    5



#Element Should Be Visible After Swiping
#    [Arguments]    ${locator}
#    ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${locator}
#    WHILE    '${is_visible}' == 'False'
#        Flick	100	500	100	100
#        ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${locator}
#    END
#    swipe by percent    50     70     50    50  2000
#Input Search Query
##    ${implicit_wait}=   get selenium implicit wait
##    log to console    ${implicit_wait}      #will print the default implicit wait
##    set selenium implicit wait    10seconds
#    [Arguments]  ${query}
#   # Click Element    xpath=//android.widget.EditText[@content-desc="test-Username"]
#   # Click Element    id=com.google.android.youtube:id/menu_search
#    Input Text     xpath=//android.widget.EditText[@content-desc="test-Username"]  ${query}
#Submit Search
#   Click Element    xpath=//android.view.ViewGroup[@content-desc="test-LOGIN"]
#  [Arguments]  ${query}
#  Input Text  txt_query_prefill  ${query}
#Submit Search
#  Click Element  btn_start_search

