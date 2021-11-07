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

Logout lawyer
    wait until page contains    Activity
    click element    id=logout

Logout client
    wait until page contains    Your Cases
    click element    //ul/li/label[text()='LOGOUT']