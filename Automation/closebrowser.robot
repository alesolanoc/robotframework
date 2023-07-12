# https://www.youtube.com/watch?v=B_FIoSIizVI&list=PLx4LEkEdFArgrdD_lvXe_hYBy8zM0Sp3b&index=13

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.google.com/
${browser}  chrome
${url1}      https://www.flipkart.com/
${browser1}  chrome

*** Test Cases ***
Close browser or browsers
    open browser    ${url}      ${browser}
    maximize browser window
    sleep   3
    open browser    ${url1}      ${browser1}
    Sleep   5
    Close All Browsers

*** Keywords ***
