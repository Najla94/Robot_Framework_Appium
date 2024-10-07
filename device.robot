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
${DEVICE_NAME}            emulator-5558
${APP_PACKAGE}            com.swaglabsmobileapp
${APP_ACTIVITY}           com.swaglabsmobileapp.MainActivity

${TextOfScrolling}       android=UiSelector().description("Onesie")
*** Test Cases ***

Open App ID CARD
    Open Appium Application
    Input UserName and Oassword  standard_user    secret_sauce
    Submit Search

     # Attempt to scroll until the element is visible
#Scroll To Specific Element      Click Element    xpath=//android.widget.TextView[@content-desc="test-Item title" and @text="Sauce Labs Onesie"]

    # Click the element after scrolling
   # Click Element    xpath=//android.widget.TextView[@content-desc="test-Item title" and @text="Sauce Labs Onesie"]
# the instraction for work with loop
Element Should Be Visible After Scrolling    ${TextOfScrolling}
#Scroll To Specific Element  Scroll To Element    xpath=(//android.view.ViewGroup[@content-desc="test-Item"])[1]/android.view.ViewGroup
    #Scroll Element Into View
#should testing to
        #Open Application   http://127.0.0.1:4723   automationName=UiAutomator2  platformName=Android   platformversion=15   deviceName=sdk_gphone64_x86_64   appActivety= com.google.android.youtube.HomeActivity
     # Perform a mobile scroll down
   # Execute Script    mobile: scroll_down
     #TAKE PERCY="screenshot_name"
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
     [Arguments]    ${user}      ${pass}
    Input Text     xpath=//android.widget.EditText[@content-desc="test-Username"]  ${user}
    Input Text     xpath=//android.widget.EditText[@content-desc="test-Password"]  ${pass}

Submit Search
    Click Element    xpath=//android.view.ViewGroup[@content-desc="test-LOGIN"]

#Scroll To Specific Element       xpath=//android.widget.TextView[@content-desc="test-Item title" and @text="Sauce Labs Onesie"]

#Scrolling the page with use loop

Element Should Be Visible After Scrolling
    [Arguments]    ${locator}
    ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${locator}
    WHILE    '${is_visible}' == 'False'
        Flick	100	400	100	100
        ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${locator}
    END

































 #Scroll Down    android=new UiScrollable(new UiSelector()).scrollInvtoView(new UiSelector().text("Sauce Labs Onesie"))
#scroll    driver.execute_script('gesture: scrollElementIntoView',{'scrollableView': list_view.id, 'strategy': 'accessibility id', 'selector': 'Picker','percentage': 50, 'direction': 'up', 'maxCount': 3})

#Scroll Element Into View      xpath=//android.widget.EditText[@content-desc="test-Username"]
#Scroll Down
#    ${element_size}=    Get Element Size    xpath=(//android.view.ViewGroup[@content-desc="test-Item"])[1]/android.view.ViewGroup
#    ${element_location}=    Get Element Location    xpath= (//android.view.ViewGroup[@content-desc="test-ADD TO CART"])[1]
#    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
#    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
##    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
##    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
#    Scroll              ${start_x}    ${start_y}
#    Sleep  1

  #  create dictionary  left=${50} top=${350} width=${50}    height=${200}  direction=down percent=${100}Sleep   1Execute Script    mobile: scrollGesture
#Click
#   Click Element    xpath=//android.widget.TextView[@text="Terms of Service | Privacy Policy"]




#Scroll
  # Scroll   xpath=//android.widget.EditText[@content-desc="test-Username"]    xpath=//android.widget.EditText[@content-desc="test-Username"]


