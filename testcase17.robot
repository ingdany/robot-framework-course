***Settings***

***TestCases***
#Forloop1
#    :FOR  ${i}  IN RANGE    1   10
#    \   log to console  ${i}

#Forloop2
#    :FOR  ${i}  IN  1    2   3   4   5   6   7   8
#    \   log to console  ${i} 

#Forloop3withlist
#    @{items}    Create List     1   2   3   4   5
#    :FOR  ${i}  IN  @{items}
#    \   log to console  ${i} 

#Forloop4 
#    :FOR  ${i}  IN  john    david   smith   scott
#    \   Log To Console  ${i}

#Forloop5 
#    @{namelist}     create list     john    david   smith   scott
#    :FOR  ${i}  IN  john    david   smith   scott
#    \   Log To Console  ${i}

Forloop6withExit
    @{items}     Create List     1   2   3   4   5
    :FOR  ${i}  IN  @{items}
    \   Log To Console  ${i}
    \   exit for loop if    ${i}==3