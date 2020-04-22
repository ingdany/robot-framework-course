*** Settings ***
Library  SeleniumLibrary
Resource    resources/resources.robot

***Variables***
${url}  http://www.newtours.demoaut.com/
${browser}  chrome

*** Test Case ***
TC1
    ${PageTitle}=    launchBrowser   ${url}     ${browser}
    Log To Console  ${PageTitle}
    log     ${PageTitle}
    input text  name:userName   mercury
    input text  name:password   mercury

