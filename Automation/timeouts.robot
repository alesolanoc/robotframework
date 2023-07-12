# https://www.youtube.com/watch?v=BOvl7WKW-zA

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://itera-qa.azurewebsites.net/home/automation
${browser}  chrome

*** Test Cases ***
Selecting from dropdown box
    ${speed}    get selenium speed
    log to console   ${speed}
    open browser    ${url}      ${browser}
    maximize browser window
    Set Selenium speed  3
    Input Text  name    alejandro
    Input Text  phone   +59170365669
    Sleep   5
    Close Browser
    ${speed}    get selenium speed
    log to console   ${speed}
*** Keywords ***
