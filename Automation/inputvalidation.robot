*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://flipkart.com
${browser}  chrome

*** Test Cases ***
Valdiation
    open browser    ${url}      ${browser}
    maximize browser window
    title should be     Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
    ${input_txt}    set variable    xpath:/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input
    Element Should Be Enabled   ${input_txt}
    Element Should Be Visible   ${input_txt}
    Sleep   3
    Input Text  ${input_txt}    codersarcade@gmail.com
    Sleep   3
    Clear Element Text  ${input_txt}
    Sleep   3
    Close Browser
*** Keywords ***
