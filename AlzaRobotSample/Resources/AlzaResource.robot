*** Settings ***
Resource    ./PageObjects/HomePage.robot
Resource    ./PageObjects/ProductListingPage.robot
Resource    ./PageObjects/ProductPage.robot
Resource    ./PageObjects/AddedToBasketPage.robot
Resource    ./PageObjects/BasketPage.robot
Resource    ./PageObjects/ShippingPaymentPage.robot

*** Keywords ***
Show televisions
    HomePage.Load home page
    HomePage.Verify page loaded
    HomePage.Go to televisions page
    #productListingPage.Sort descend
    
Sort products descend
    ProductListingPage.Sort products descend
    Log    Sorting products descending
    
Open product on position
    ProductListingPage.Open product on position    1
    Log    Opening product on position X
    
Buy opened product
    ProductPage.Add product to basket
    Log    Adding product to basket
    
Proceed to checkout
    AddedToBasketPage.Proceed to checkout
    Log    Proceeding to checkout
    
Continue to shipping and payments page
    BasketPage.Continue to basket
    Log    Continuing to basket
    
Continue if not in stock
    #Load No of in stock items and if > 0 dont run this branch
    BasketPage.Not in stock popup continue
    
Set delivery and payment method
    ShippingPaymentPage.Set delivery to Prague 7
    ShippingPaymentPage.Confirm dispatching
    ShippingPaymentPage.Set payment to cash
    ShippingPaymentPage.Continue to address