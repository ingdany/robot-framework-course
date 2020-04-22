*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
${user}     pavanoltraining@gmail.com
${password}     Test@123

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    loginToApp
    close browser

*** Keywords ***
loginToApp
    click link  xpath://a[@class='ico-login']
    input text  id:Email    ${user}
    input text  id:Password   ${password}  
    click element   xpath://input[@class='button-1 login-button']

