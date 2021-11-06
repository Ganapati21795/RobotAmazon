*** Settings ***
Documentation  This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/Legodesk.robot

Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://uat.legodesk.com/register
${LOGIN_URL} =    https://uat.legodesk.com/login
${FIRST_NAME} =  Ganapati
${LAST_NAME} =  Bhat
${EMAIL} =  bhatganapati6@gmail.com
${PASSWORD} =  Ganesha@1234
${CONFIRM_PASSWORD} =  Ganesha@123
${PHONE_NUMBER} =    9916929918
*** Test Cases ***
User able to fill all the entries and Register
    [Tags]  Current
    Legodesk.Fill all the Details
    Legodesk.Registering User
# Do email varification manually
User able to login to the application
    Legodesk.Login User

User able to logout from the application
    Legodesk.Login User
    Legodesk.Logout User

User able to verify all the dashboard items
    Legodesk.Login User
    Legodesk.Verify the all dashboard sections

