# https://www.youtube.com/watch?v=phcU7rqzUYo&list=PLx4LEkEdFArgrdD_lvXe_hYBy8zM0Sp3b&index=21

*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
practiceform
    ${pagetitle}    launchbrowser   ${url}  ${browser}
    log to console  ${pagetitle}
    log     ${pagetitle}
    inputvalues
    close browser

*** Keywords ***
launchbrowser
    [Arguments]     ${weburl}   ${webbrowser}
    open browser    ${weburl}   ${webbrowser}
    maximize browser window
    ${title}    get title
    [return]    ${title}

inputvalues
    input text  xpath://*[@id="name"]   Alejandro
    input text  xpath://*[@id="email"]  alejandro.solano.38@gmail.com