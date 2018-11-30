*** Settings ***
Library    SeleniumLibrary    

*** Keywords ***
Begin Web Test
    [Arguments]    ${BROWSER}
    Open Browser    about:blank     ${BROWSER}
    
End Web Test
    #Close Browser
    Log    Stopping script instead Closing browser