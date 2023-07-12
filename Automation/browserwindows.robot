# https://www.youtube.com/watch?v=D78D8un3S0Q&list=PLx4LEkEdFArgrdD_lvXe_hYBy8zM0Sp3b&index=16

*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url}      https://www.google.com/
${browser}  chrome

*** Test Cases ***
browsercommands
    open browser    ${url}      ${browser}
    maximize browser window
    sleep   3
    go to   https://www.yahoo.com/
    sleep   3
    go back
    sleep   3
    close browser


*** Keywords ***
