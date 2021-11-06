*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify User able to view Activity
    wait until element is visible    //div[text()='Activity']/parent::div/div[2]/div[text()='Last Login']

Verify user able to add the contact
    click button    (//button[@class='btn btn-1 btn-round global-button-font px-3'])[2]
    wait until element is visible     //h4
    input text    name=phoneNumber      ${PHONE_NUMBER}
    click button    //button[text()='SAVE']
    go back

Verify View Profile
    wait until element is visible    //button[text()='VIEW PROFILE']
    click button    //button[text()='VIEW PROFILE']
    wait until element is visible    //div[contains(@class, 'user-name')]
    go back
    wait until element is visible    //div[text()='Activity']/parent::div

Verify page loaded
    wait until element is visible    //div[text()='Activity']/parent::div/div[2]/div[text()='Last Login']


