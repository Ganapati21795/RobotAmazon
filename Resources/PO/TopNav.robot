*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary

*** Keywords ***
Entering all the Details
    Enter first name
    Enter last name
    Enter email address
    Enter password
    Enter confirm password

Enter login Details
    Enter Username
    Enter Userpassword
    Click Login

Enter Client login Details
    Enter Client Username
    Enter Userpassword
    Click Login


User Registration
    Register User


Enter first name
    Input Text  name=fname  ${FIRST_NAME}

Enter last name
    Input Text  name=lname    ${LAST_NAME}

Enter email address
    Input Text  name=email    ${EMAIL}

Enter password
    Input Text  name=password    ${PASSWORD}

Enter confirm password
    Input Text  name=Confirmpassword    ${CONFIRM_PASSWORD}


Enter Client Username
    Input Text  //input[@placeholder='Enter a username or email']    ${CLIENT_EMAIL}

Enter Username
    Input Text  //input[@placeholder='Enter a username or email']    ${EMAIL}

Enter Userpassword
    Input Text  //input[@placeholder='Enter a password']    ${PASSWORD}


Register User
    Click Button  //button[text()='Register']

Click Login
    Click Button    Login

Select client
    click element    //label[text()='Client']