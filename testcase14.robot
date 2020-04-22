***Settings***
Library     SeleniumLibrary

***Test Cases***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/  chrome
    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123

    #capture element screenshot      xpath://*[@id="divLogo"]/img    C:/Repository/python/robot/screenshot1.png
    #capture page screenshot     C:/Repository/python/robot/screenshot2.png

    capture element screenshot      xpath://*[@id="divLogo"]/img    screenshot1.png
    capture page screenshot     screenshot2.png