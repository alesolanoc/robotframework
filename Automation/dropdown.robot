# https://www.youtube.com/watch?v=BOvl7WKW-zA

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://itera-qa.azurewebsites.net/home/automation
${browser}  chrome

*** Test Cases ***
Selecting from dropdown box
    open browser    ${url}      ${browser}
    maximize browser window
    Select From List By Label   xpath://select[@class='custom-select']   Norway
    Sleep   5
    Select From List By Index   xpath://select[@class='custom-select']   5
    Sleep   5
    Select From List By Value   xpath://select[@class='custom-select']   7
    Sleep   5
    Close Browser
*** Keywords ***
