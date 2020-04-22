***Settings*** 
Library     SeleniumLibrary
Variables   ../pageobjects/locators.py

***Keywords***
Open my Browser
    [Arguments]     ${SiteUrl}      ${Browser}
    open browser    ${SiteUrl}      ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]     ${username}
    Input Text      ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]     ${password}
    Input Text      ${txt_loginPassword}    ${password}

Click SignIn
    click button    ${btn_signIn}

Verify Succesfull Login 
    title should be     Find a Flight: Mercury Tours:

Close My Browsers
    Close all Browsers