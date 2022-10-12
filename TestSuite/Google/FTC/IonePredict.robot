***settings ***
Documentation    Basic Login Functionality
Library    SeleniumLibrary

***variables ***
${Login URL}    https://dev.ionecloud.lntebg.com/layout/dashboard
${Browser}    chrome
${PasswordText}   id:currentPwdId
${PASSWORD}    Sparcnet_78H
${xpath}    xpath://select[@placeholder='Select Work Type']

${User_Menu Link}

***test cases ***
Verify the Login Functionality
    [Documentation]    This is to verify the basic login functionailty
    [Tags]    Functional

    SeleniumLibrary.Open Browser    ${LoginURL}    ${Browser}
    Input Text    //input[@id='inputEmail']    21customer@yopmail.com
    Press Keys    //input[@id='next_btn']    RETURN

    Wait Until Element Is Visible  id:currentPwdId  timeout=20
    Input Password    ${PasswordText}    ${PASSWORD}
    Press Keys    //input[@value='Login']    RETURN



    Wait Until Element Is Enabled    //input[@value='Continue']    timeout=20
    Press Keys    //input[@value='Continue']    RETURN
    Maximize Browser Window

     Wait Until Element Is Enabled    //a[normalize-space()='Go']    timeout=25
    Press Keys    //a[normalize-space()='Go']    RETURN

    Sleep    4s
    SeleniumLibrary.Switch Window    new
    Wait Until ELement is Visible    xpath://a[@title='Digital Maintenance Manager']
    Click Link    xpath://a[@title='Digital Maintenance Manager']

    Sleep    10s
    Wait Until ELement is Visible    xpath://a[normalize-space()='Permit To Work']
    Click Link    xpath://a[normalize-space()='Permit To Work']

    Sleep    30s
    Wait Until ELement is Visible    xpath://button[normalize-space()='Create New']
    Click Button    xpath://button[normalize-space()='Create New']


    Mouse over    ${xpath}
    Page Should Contain Element    xpath://select[@placeholder='Select Work Type']    15s
    Click Element   ${User_Menu Link}
    Select From List    xpath://select[@placeholder='Select Work Type']    Planned Maintenance




***keywords ***
