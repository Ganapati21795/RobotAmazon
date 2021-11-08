*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify user opens the calendar tab
    wait until page contains    Activity
    click element    (//li[@class='pro-menu-item pro-sub-menu']/div[@id='close'])[2]
    click element    //div/div/ul/li[@id='calendar']

Verify User able to add the event

    click button    //button[@class='btn btn-1 btn-round global-button-font px-4 global-button-padding']
    input text    name=title    ${EVENT_TITLE}
    input text    name=description  ${EVENT_DESC}
    clear element text    //input[@placeholder='Select a starting date']
    clear element text     //input[@placeholder='Selecct a starting time']
    clear element text    //input[@placeholder='Select a ending date']
    clear element text    //input[@placeholder='Select a end time']
    input text      //input[@placeholder='Select a starting date']    ${EVENT_START_DATE}
    input text    //input[@placeholder='Selecct a starting time']     ${EVENT_START_TIME}
    input text    //input[@placeholder='Select a ending date']      ${EVENT_END_DATE}
    input text    //input[@placeholder='Select a end time']         ${EVENT_END_TIME}
    click button    //button[@class='btn btn-1 btn-round global-button-font px-4 global-button-padding']
    go back

Verify User able to close the event

    click button    //button[@class='btn btn-1 btn-round global-button-font px-4 global-button-padding']
    input text    name=title    ${EVENT_TITLE}
    input text    name=description  ${EVENT_DESC}
    clear element text    //input[@placeholder='Select a starting date']
    clear element text     //input[@placeholder='Selecct a starting time']
    clear element text    //input[@placeholder='Select a ending date']
    clear element text    //input[@placeholder='Select a end time']
    input text      //input[@placeholder='Select a starting date']    ${EVENT_START_DATE}
    input text    //input[@placeholder='Selecct a starting time']     ${EVENT_START_TIME}
    input text    //input[@placeholder='Select a ending date']      ${EVENT_END_DATE}
    input text    //input[@placeholder='Select a end time']         ${EVENT_END_TIME}
    click element    //span[text()='×']

User verifies can able to click on week and day
    click button    //button[@title='week view']
    log    clicks on week button
    click button    //button[@title='day view']
    log     clicks on day button
    go back



User Verifies can able to create a task in the To-Do List
    click element    (//span[@class = 'global-font-black-customsize' ])[1]
    input text    //textarea[@name = 'task' ]   ${TASK_TEXT}
    click button    (//button[@class ='btn btn-1 btn-round global-button-font px-4 global-button-padding'])[2]

