*** Settings ***
Library     SeleniumLibrary
Resource    ../Automation/DataDrivern.robot
Suite Setup  Open my browser
Suite Teardown      close my browsers
Test Template   Invalid login

*** Test Cases ***
right user wrong pwd    dmin@yourstore.com      xyz
#wrong user right pwd    admin1@yooiuioi.dfd     admin
#right user empty pwd    admin@yourstore.com     ${EMPTY}
#empty user right pwd    ${EMPTY}                admin
#wrong user wrong pwd    sfsdf                   sdf


*** Keywords ***
Invalid login
    [Arguments] ${usename}  ${password}
    inputing Username  ${username}
    inputing Password  ${password}
    click onto login button
    error message should visible
