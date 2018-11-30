*** Settings ***
Library    SeleniumLibrary 

*** Variables ***
${goToBasketButtonElem} =    xpath=//div[@id='content0c']//div[@class='obuttons crossbuttons crossTopbuttons']//a[position()=2]
${goBackToProductPageButtonElem} =    xpath=//div[@id='content0c']//div[@class='obuttons crossbuttons crossTopbuttons']//a[position()=1]       

*** Keywords ***
Proceed to checkout
    #flaky - color of button changes according to stocking
    #Click Element    xpath=//div[@class='obuttons crossbuttons crossTopbuttons']//a[@class='btnx normal green arrowedRight floatRight toOrder1']
    #Click Link    href=/Order1.htm
    #Not flaky
    Wait Until Page Contains Element    ${goToBasketButtonElem}        
    Click Element    ${goToBasketButtonElem}    
    Log    Proceeding to checkout
    
Go back to product page
    #Click Element    xpath=//div[@class='obuttons crossbuttons crossTopbuttons']//a[@class='btnx normal grey arrowedLeft floatLeft']
    Wait Until Page Contains    ${goBackToProductPageButtonElem}    
    Click Element    ${goBackToProductPageButtonElem}        
    Log    Returning back to product details page        
    