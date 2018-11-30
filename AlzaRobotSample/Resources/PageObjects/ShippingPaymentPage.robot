*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${shippingPrg7CheckBoxElem} =    id=deliveryCheckbox-595    
${deliveryPrg7Elem} =    xpath=//div[@id='deliveryListContainer']//div[contains(@id, 'deliveryContainer')][position()=1]
${paymentCashCheckBoxElem} =    id=paymentCheckbox-101
${paymentCashElem} =    xpath=//div[@id='order2Payment']//label[@for='paymentCheckbox-101']

*** Keywords ***
Confirm order
    Click Element    id=confirmOrder2Button
    Log    Confriming order 
    
Set delivery to Prague 7
    #TODO   
    #Select Checkbox    locator
    Select Checkbox    ${shippingPrg7CheckBoxElem}    
    Click Element    ${deliveryPrg7Elem}       
    Log    Setting delivery to Prague 7
    
Confirm dispatching
    Click Element    xpath=//div[@class='alzaDialogBody']//a[@class='btnx normal green dialogButton confirmDialog']
    Log    Confirming dispatching
    
Set payment to cash
    #TODO
    Log    Setting payment to cash
    
Continue to address
    Click Element    id=confirmOrder2ButtonContainer
    Log    Continuing to address setting
    
Set standard delivery
    Click Element    name=personalCentralDelivery
    Log    Setting standard delivery              