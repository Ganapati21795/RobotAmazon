*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify User able to view Activity
    wait until element is visible    //div[text()='Activity']/parent::div/div[2]/div[text()='Last Login']


Verify user able to add the contact
    click button    (//button[@class='btn btn-1 btn-round global-button-font px-3'])[2]
    wait until element is visible     //h4
    input text    name=firstName        ${F_NAME_CONTACT}
    input text    name=lastName         ${F_NAME_CONTACT}
    input text    name=email        ${EMAIL_CONTACT}
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
    wait until page contains    Activity

Verify user able to view queries
    click button    (//button[@class='btn btn-1 btn-round global-button-font px-3'])[3]
    wait until page contains    //p[text()='Queries']
    go back

Verify user trying to add the case
    click button    (//button[@class='btn btn-1 btn-round global-button-font px-3'])[4]
    wait until page contains    //h4[text()='Add new case']
    click button    (//button[contains(text(), 'A')])[1]
    select frame    name = _hjRemoteVarsFrame
    checkbox should be selected     class="ui fitted checkbox pl-4 bg-color-checkbox"

Verify user able to view and delete the contact information
    click button    (//button[@class='btn btn-1 btn-round global-button-font px-3'])[2]
    wait until page contains    Your Contacts
    click button    //button[text()='DETAIL']
    wait until element is visible    //div[@class="dropdown text-center"]/button
    click element    //div[@class="dropdown text-center"]/button
    wait until element is visible    //a[@class='dropdown-item global-font py-2']
    click button    //a[@class='dropdown-item global-font py-2']
    click button    //a[contains(text(), 'Yes, delete it!')]
    go back
#    wait until page contains    //tbody/tr/td/span[text()='Phone Number']/parent::td/following-sibling::td[2]/span
#    click element    //tbody/tr/td/span[text()='Phone Number']/parent::td/following-sibling::td[2]/span
#    clear element text    //tbody/tr/td/span[text()='Phone Number']/parent::td/following-sibling::td[2]/span
#    input text    name = phoneNumber     ${UPDATED_NUMBER}
#    click button      type=submit
#    click button
#    go back

Verify user able to get the number of case hearings
    get text    //div[text()='Number of case hearings']/following-sibling::div/span

Verify user able to get the number of invoice due
    get text    //div[text()='Number of invoice due']/following-sibling::div/span

