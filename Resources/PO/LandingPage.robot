*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Load
    Go To    ${START_URL}

Verify Page Loaded
   title should be    Legodesk


Login
   Go To    ${LOGIN_URL}

Logout
    wait until page contains    Activity
    click element    id=logout