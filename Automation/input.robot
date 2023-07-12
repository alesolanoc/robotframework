*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.google.com/
${browser}  chrome
*** Test Cases ***
InputBox
    open browser    ${url}      ${browser}
    Maximize Browser window
    Sleep   2
    input text  xpath://*[@id="APjFqb"]   Amazon
    click button    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]
    clear element text  xpath://textarea[@id='APjFqb']
    sleep   2
    input text  xpath://textarea[@id='APjFqb']   facebook
    click button    xpath://button[@aria-label='Buscar']

*** Keywords ***
