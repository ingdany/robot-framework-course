*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/loginkeywords.robot

*** Variable ***
${Browser}  chrome
${SiteUrl}  http://newtours.demoaut.com
${user}     tutorial
${pwd}      tutorial

*** Test Case ***
LoginTest
    Open my Browser     ${SiteUrl}  ${Browser}
    Enter UserName  ${user}
    Enter Password  ${pwd}
    Click SignIn
    Sleep   3   seconds
    Verify Succesfull Login 
    Close My Browsers