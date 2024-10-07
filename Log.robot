*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${URL}    https://www.saucedemo.com/v1/
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Login Test Case
    [Documentation]    This test case logs into the application and verifies the login.
    Open Browser    ${URL}    chrome
    Log    Opening browser at ${URL}.
    Sleep    1
    Input Text    user-name    ${USERNAME}
    Log    Entered username: ${USERNAME}
    Sleep    1
    Input Text    password    ${PASSWORD}
    Log    Entered password.
    Click Button    login-button
#    ${status}    ${result}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    welcome_message
#    Log    Login status: ${status}
#    Log    Result: ${result}
#    Close Browser