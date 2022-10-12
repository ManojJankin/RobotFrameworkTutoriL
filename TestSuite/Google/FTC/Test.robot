***settings ***
Library    SeleniumLibrary
***variables ***
${Login URL}    https://www.python.org
${Browser}    chrome
***Test Cases ***
Valid Login
    Open Browser to Login Page

    [Teardown]    SeleniumLibrary.Close Browser
***keywords ***
Open Browser to Login Page
    SeleniumLibrary.Open Browser    ${Login URL}    ${Browser}


