***settings ***
Documentation    Basic Search Functionality
Library    SeleniumLibrary

***variables ***
${Ebay URL}    https://www.ebay.com/
${Browser}    chrome

***Test Cases ***
Verify Basic Search Functionality for Ebay
    [Documentation]    This verifies basic search functionality
    [Tags]    Functional

    SeleniumLibrary.Open Browser    ${Ebay URL}    ${Browser}
    Input Text    //input[@id='gh-ac']    mobile
    Press Keys    //input[@id='gh-btn']    RETURN
    Page should contain    results for mobile

***Keywords ***
