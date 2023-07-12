# https://www.youtube.com/watch?v=BOvl7WKW-zA

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://itera-qa.azurewebsites.net/home/automation
${browser}  chrome

*** Test Cases ***
Checking radio buttons and check boxes
    open browser    ${url}      ${browser}
    maximize browser window
    Select Radio Button     optionsRadios   option1
    Select Checkbox     monday
    Sleep   5
    Select Radio Button     optionsRadios   male
    Select Checkbox     tuesday
    UnSelect Checkbox   monday
    Sleep   5
    Close Browser
*** Keywords ***
