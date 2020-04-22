*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
RegTest
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    #${time}=    get selenium timeout
    #Log To Console      ${time}
    #set selenium timeout    10 seconds
    #wait until page contains    Registration    #5 secs
    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}
    set selenium implicit wait      10 seconds
    select radio button     Gender      M
    input text  name:FirstName       David
    input text  name:LastName        John
    input text  name:Email       anhc@gmail.com
    input text  name:Password        davidjohn
    input text  name:ConfirmPassword         davidjohn
    close browser