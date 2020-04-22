***Settings***
Library     SeleniumLibrary
Resource    resources/login_resources.robot
Suite Setup     Open my Browser
Suite Teardown  Close Browsers
Test Template   Invalid login

***Test Cases***    
Right user empty pwd    admin@yourstore.com     ${EMPTY}
Right user wrong pwd    admin@yourstore.com     xyz
Wrong user right pwd    adm@yourstore.com       admin
Wrong user empty pwd    adm@yourstore.com       ${EMPTY}
Wrong user wrong pwd    adm@yourstore.com       xyz
#Right user right pwd    admin@yourstore.com     admin

***Keywords***
Invalid login
    [Arguments]     ${username}     ${password}
    Input username   ${username}
    Input pwd   ${password}
    click login button
    Error message should be visible
