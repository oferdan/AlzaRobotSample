*** Settings ***
Library    SeleniumLibrary    

*** Keywords ***
Load home page
    #Open Browser    https://www.alza.cz/    #browser    #do Setup
    Go To    https://www.alza.cz/
    
Go to televisions page
    #Go To    https://www.alza.cz/televize/18849604.htm 
    Click Element    xpath=//div[@id='left']//div[@class='bx']//a[contains(@title, 'Televize')]
    
 Verify page loaded
     Wait Until Page Contains    Alza.cz              