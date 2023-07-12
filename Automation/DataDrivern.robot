#  https://www.youtube.com/watch?v=3vhOFw94NXA&list=PLx4LEkEdFArgrdD_lvXe_hYBy8zM0Sp3b&index=27

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://admin-demo.nopcommerce.com/
${browser}  chrome

*** Keywords ***
Open my browser
    open browser    ${url}      ${browser}
    maximize browser window

close my browsers
    close all browsers

login into page
    go to   ${url}

inputing Username
    [Arguments] ${username}
    input text  id:Email    ${username}

inputing Password
    [Arguments] ${password}
    input text  id:password    ${password}

click onto login button
    click element    xpath://button[normalize-space()='Log in']

click log out button
    click link  Logout

error message should visible
    page should contain     Login was unsuccessful