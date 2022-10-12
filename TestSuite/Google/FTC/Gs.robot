***Settings ***
Library    SeleniumLibrary


***Variables ***

${LOGIN URL}      http://www.google.com
${BROWSER}        Chrome


***Test Cases ***
Valid Login
    Open Browser To Login Page

    [Teardown]    SeleniumLibrary.Close Browser



***Keywords ***
Open Browser To Login Page
    SeleniumLibrary.Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Google
