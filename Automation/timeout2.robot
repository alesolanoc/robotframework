# //h1[normalize-space()='Test automation practice form']

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://itera-qa.azurewebsites.net/home/automation
${browser}  chrome

*** Test Cases ***
Selecting from dropdown box
    open browser    ${url}      ${browser}
    maximize browser window
    ${wait}  get selenium implicit wait
    log to console  ${wait}
    set selenium implicit wait    10
    ${wait}  get selenium implicit wait
    log to console  ${wait}
    wait until page contains    Test automation practice form1
    Input Text  name    alejandro
    Input Text  phone   +59170365669
    Sleep   5
    Close Browser
    ${speed}    get selenium speed
    log to console   ${speed}
*** Keywords ***
