# https://www.youtube.com/watch?v=BqnVgOoRaTM&list=PLx4LEkEdFArgrdD_lvXe_hYBy8zM0Sp3b&index=14

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://robotframework.org/
${browser}  chrome

*** Test Cases ***
windowsclose
    open browser    ${url}      ${browser}
    maximize browser window
    sleep   3
    click link  xpath://*[@id="app"]/div[4]/div[4]/div[1]/div[2]/p[2]/a[1]
    Sleep   3
    Switch window  Robot Framework
    Sleep   3
    Close window
    Sleep   3
    close browser
*** Keywords ***
