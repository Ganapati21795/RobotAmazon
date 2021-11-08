*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify user able to verify buttons in the cases
    wait until page contains    Activity
    click element    (//li[@class='pro-menu-item pro-sub-menu']/div[@id='close'])[2]
    wait until element is visible    //div[@class='react-slidedown pro-inner-list-item']/div/ul/li[@id='case']
    click element    //div/div/ul/li[@id='case']
    click button    //button[text()='ADD NEW CASE']
    wait until page contains    Add new case
    log    clicking on Add your client button
    click button    (//button[@class='btn btn-1 btn-round global-button-font px-4 w-100 mt-0 global-button-padding'])[1]
    log     clicking on submit button
    click button    //button[@class='btn btn-1 btn-round global-button-font px-4 global-button-padding ']
    click button    (//button[@class='btn btn-1 btn-round global-button-font px-4 w-100 mt-0 global-button-padding'])[2]    #ADD OPPOSITE PARTIES BUTTON
    log    clicked on Add opposite parties button
    click button    //button[@class='btn btn-1 btn-round global-button-font px-4 global-button-padding ']   #SUBMIT BUTTON
    log     clicked on submit button
    click button    //button[@class='btn btn-1 btn-round global-button-font px-4 mt-5 float-right res-save-bttns global-button-padding']
    log    User clicks on "Save and Close" button
    click button    //button[@class='btn btn-1 btn-round global-button-font px-4 mt-5 float-left res-save-bttns global-button-padding']
    log    User clicks on "Save and Next" button
    click button    //button[@class='btn btn-1 btn-round global-button-font px-4 float-left global-button-padding']
    log     User clicks on back button
