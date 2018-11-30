*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${goBackToProductButtonElem} =    xpath=//div[@class='obuttons']//a[contains(@class,'floatLeft')]
${basketContinueElem} =           xpath=//div[@class='obuttons']//a[contains(@class,'floatRight')]   
${notInStockPopupCloseElem} =     xpath=//div[@id='infodialog']//div[@class='closei close'] 
${notInStockPopupBackElem} =      xpath=//div[@id='infodialog']//div[@class='center row frow']//a[position()=1]
${notInStockPopupContinueElem} =  xpath=//div[@id='infodialog']//div[@class='center row frow']//a[position()=2]      

*** Keywords ***
Go back to product
    Click Element    ${goBackToProductButtonElem}    
    
Continue to basket
    #Click Element    xpath=//div[id='orderpage']//div[@class='obuttons']//a[@class='btnx normal green arrowedRight floatRight order2']
    Wait Until Page Contains Element    ${basketContinueElem}    
    Click Element    ${basketContinueElem}    
    Log    Continuing to basket
        
Close not in stock popup
    Click Element     ${notInStockPopupCloseElem}    
    Log    Closing not in stock popup

Not in stock popup go back
    #Click Element    xpath=//div[@id='infodialog']//a[@class='dbtnx btn green col-1 ok']
    Wait Until Page Contains Element        ${notInStockPopupBackElem}
    Click Element    ${notInStockPopupBackElem}      
    Log    Continuing if not in stock popup

Not in stock popup continue
    #Click Element    xpath=//div[@id='infodialog']//a[@class='dbtnx btn green col-1 ok']
    Wait Until Page Contains Element    ${notInStockPopupContinueElem}    
    Click Element    ${notInStockPopupContinueElem}        
    Log    Continuing if not in stock popup