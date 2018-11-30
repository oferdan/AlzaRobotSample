*** Settings ***
Documentation    Povidani o Test Suite
Resource    ../Resources/AlzaResource.robot
Resource    ../Resources/CommonResource.robot

Library    SeleniumLibrary

Test Setup    Begin Web Test    firefox
Test Teardown    End Web Test        

*** Variables ***
#${Browser} =  firefox

*** Test Cases ***
# Alza Seach Test Case
        # [Documentation]    Dalsi povidani
        # Open browser  https://www.alza.cz  ${Browser}
        # Wait Until Page Contains    Alza.cz  #Alza - Největší obchod s počítači a elektronikou | Alza.cz
        # Input Text  id=search  TCL 55DC760
        # Click Button  id=btnSearch
        # Wait Until Page Contains  Vyhledáno: TCL 55DC760
        # Close Browser    

Order most expensive television Test Case
    AlzaResource.Show televisions
    AlzaResource.Sort products descend
    AlzaResource.Open product on position
    AlzaResource.Buy opened product
    AlzaResource.Proceed to checkout
    AlzaResource.Continue to shipping and payments page
    AlzaResource.Continue if not in stock
    AlzaResource.Set delivery and payment method
