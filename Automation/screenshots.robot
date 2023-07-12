# https://www.youtube.com/watch?v=EWErHud3D1Y&list=PLx4LEkEdFArgrdD_lvXe_hYBy8zM0Sp3b&index=17

*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url}      https://www.google.com/
${browser}  chrome

*** Test Cases ***
browsercommands
    open browser    ${url}      ${browser}
    maximize browser window
    capture element screenshot  xpath:/html/body/div[1]/div[2]/div/img  file.png
    capture page screenshot     website.png
    sleep   3
    close browser


*** Keywords ***
