*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Case ***
Handle DropDowns and Lists
    open browser    ${url}  ${browser}
    maximize browser window

    select from list by label   continents  Australia
    sleep   5
    select from list by index   continents  6
    #select from list by value   
    select from list by label   selenium_commands   Switch Commands
    select from list by label   selenium_commands   WebElement Commands
    unselect from list by label     selenium_commands   Switch Commands
    #close browser