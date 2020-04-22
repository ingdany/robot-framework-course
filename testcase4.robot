*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Case ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  2seconds
    #Radio buttons
    select radio button     sex     Female
    select radio button     exp     5 
    #Checkboxes
    select checkbox     BlackTea
    select checkbox     RedTea
    unselect checkbox   BlackTea 
