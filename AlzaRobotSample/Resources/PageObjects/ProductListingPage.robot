*** Settings ***
Library    SeleniumLibrary    

*** Keywords ***
Sort products descend
    Click Element    xpath=//div[@id='tabs']//li[contains(@class, 'ui-tabs-tab ui-corner-top')][position()=3]
    Sleep    3s
    
Sort productcs ascend
    Click Element    xpath=//div[@id='tabs']//li[contains(@class, 'ui-tabs-tab ui-corner-top')][position()=4]
    Sleep    3s    
    
Open product on position
    [Arguments]    ${product_position}
    Click Element    xpath=//div[@id='boxes']//div[contains(@class, 'box browsingitem')][position()=${product_position}]//a[@class='name browsinglink']   
    
#Get price of product on position
    