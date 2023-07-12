# https://www.youtube.com/watch?v=B2NrFHq02qQ&list=PLx4LEkEdFArgrdD_lvXe_hYBy8zM0Sp3b&index=15

*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url}      https://the-internet.herokuapp.com/javascript_alerts
${browser}  chrome

*** Test Cases ***
alertWindow one button
    open browser    ${url}      ${browser}
    maximize browser window
    sleep   3
    click button    xpath://*[@id="content"]/div/ul/li[1]/button
    Sleep   3
    alert should be present     I am a JS Alert
    Sleep   3
    Element Text Should Be  //*[@id="result"]   You successfully clicked an alert
    sleep   3
    close browser

alertWindow confirm
    open browser    ${url}      ${browser}
    wait until element is visible   xpath://*[@id="content"]/div/ul/li[2]/button    timeout=5
    maximize browser window
    sleep   3
    click button    xpath://*[@id="content"]/div/ul/li[2]/button
    Sleep   3
    ${message}=  Handle Alert  action=DISMISS  #Click on 'Cancel' button
    Should Be Equal  ${message}  I am a JS Confirm
    Sleep   3
    Element Text Should Be  xpath://*[@id="result"]   You clicked: Cancel
    sleep   3
    click button    xpath://*[@id="content"]/div/ul/li[2]/button
    sleep   3
    ${message}=  Handle Alert  action=ACCEPT  #Click on 'Ok' button
    Should Be Equal  ${message}  I am a JS Confirm
    Sleep   3
    Element Text Should Be  xpath://*[@id="result"]   You clicked: Ok
    sleep   3
    close browser

alertWindows Prompt
    open browser    ${url}      ${browser}
    wait until element is visible   xpath://*[@id="content"]/div/ul/li[2]/button    timeout=5
    maximize browser window
    sleep   3
    click button    xpath://*[@id="content"]/div/ul/li[3]/button
    Sleep   3
    Input Text Into Alert  Testersdock  action=ACCEPT  #Click 'OK' after inputting the text
    Element Text Should Be  id:result  You entered: Testersdock
    sleep   3
    click button    xpath://*[@id="content"]/div/ul/li[3]/button
    Sleep   3
    Handle alert    action=DISMISS  #Click 'cancel' after inputting the text
    Element Text Should Be  id:result  You entered: null
    sleep   3
    close browser
*** Keywords ***
