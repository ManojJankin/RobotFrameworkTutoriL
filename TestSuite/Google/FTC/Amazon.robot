*** Settings ***

Documentation    Basic Amazon addcart
Library    SeleniumLibrary
*** Variables ***

${loginURL}    https://www.amazon.in/
${Browser}    chrome

*** Test Cases ***
Verify the Product add cart
    [Documentation]    this is to verify the product is getting added to cart
    [Tags]    Functional

    Seleniumlibrary.open browser    ${loginURL}  ${Browser}
    maximize browser window
    wait until element is visible    xpath://input[@id='twotabsearchtextbox']
    input text    //input[@id='twotabsearchtextbox']    iphone 14drzhbs
    Click element    //input[@id='nav-search-submit-button']
    Sleep    2S
    Click Element    xpath:(//img[@class="s-image"])[1]
    SeleniumLibrary.switch window    new
    Sleep    4S
    execute javascript    window.scrollTo(0,500)
    click image    xpath://input[@id='buy-now-button']


***keywords ***
