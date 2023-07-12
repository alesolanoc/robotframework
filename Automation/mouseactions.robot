# https://www.youtube.com/watch?v=As4LTcPaisk&list=PLx4LEkEdFArgrdD_lvXe_hYBy8zM0Sp3b&index=19

*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
browsercommands
    open browser    ${url}      ${browser}
    maximize browser window
    double click element    xpath://*[@id="HTML10"]/div[1]/button   #double right mouse click
    sleep   3
    textfield value Should Be  xpath://*[@id="field2"]  Hello World!
    sleep   3
    drag and drop   xpath://*[@id="draggable"]/p    //*[@id="droppable"]
    sleep   3
    open context menu   xpath://*[@id="HTML9"]/div[1]/button[1]     #click right mouse bbutton
    sleep   3
    close browser


*** Keywords ***
