# https://www.youtube.com/watch?v=ZEGgqTQ_hUI&list=PLx4LEkEdFArgrdD_lvXe_hYBy8zM0Sp3b&index=24

*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
tablevalidation
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
    ${rows}     get element count   xpath://table[@name='BookTable']/tbody/tr
    ${columns}     get element count   xpath://table[@name='BookTable']/tbody/tr[1]/th
    log to console      ${rows}
    log to console      ${columns}
    ${data}     get text    xpath://table[@name='BookTable']/tbody/tr[2]/td[1]
    log to console      ${data}
    table column should contain     xpath://table[@name='BookTable']    1   BookName
    table row should contain     xpath://table[@name='BookTable']    5   Mukesh
    table cell should contain   xpath://table[@name='BookTable']    6   2   Amod
    table header should contain   xpath://table[@name='BookTable']    BookName
    ${title}    get title
    [return]    ${title}

inputvalues
    input text  xpath://*[@id="name"]   Alejandro
    input text  xpath://*[@id="email"]  alejandro.solano.38@gmail.com