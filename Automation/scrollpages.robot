# https://www.youtube.com/watch?v=c0zSkTxKTSo&list=PLx4LEkEdFArgrdD_lvXe_hYBy8zM0Sp3b&index=18

*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url}      https://en.wikipedia.org/wiki/Main_Page
${browser}  chrome

*** Test Cases ***
browsercommands
    open browser    ${url}      ${browser}
    maximize browser window
    execute javascript  window.scrollTo(0,1500)
    sleep   3
    execute javascript  window.scrollTo(0,0)
    sleep   3
    scroll element into view    xpath://*[@id="p-lang-btn-checkbox"]    #to an element
    sleep   3
    scroll element into view    xpath:/html/body/div[1]/header/div[1]/a/span/img[1]     #to an element
    sleep   3
    execute javascript  window.scrollTo(0,document.body.scrollHeight)       #to bottom
    sleep   3
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)       #to top
    sleep   3
    close browser


*** Keywords ***
