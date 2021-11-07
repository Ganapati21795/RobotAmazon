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
${F_NAME_CONTACT} =     Testfirst
${F_NAME_CONTACT} =     Testlast
${EMAIL_CONTACT} =      test@gmail.com
${EMAIL} =  bhatganapati6@gmail.com
${PASSWORD} =  Ganesha@123
${CONFIRM_PASSWORD} =  Ganesha@123
${PHONE_NUMBER} =    8892851492
${UPDATED_NUMBER} =    1234567890
${CLIENT_EMAIL} =    mahadevbhat@pesu.pes.edu

*** Test Cases ***
User able to fill all the entries and Register
    [Tags]  Current
    Legodesk.Fill all the Details
    Legodesk.Registering User
# Do email varification manually
User able to login to the application as lawyer
    Legodesk.Login User

User able to logout from the application
    Legodesk.Login User
    Legodesk.Logout User

User able to verify all the dashboard items
    Legodesk.Login User
    Legodesk.Verify the all dashboard sections

User able to login to the application as client
    Legodesk.Login Client User

User able to logout to the application as client
    Legodesk.Login Client User
    Legodesk.Logout Client User
