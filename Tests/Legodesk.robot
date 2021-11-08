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
${EVENT_TITLE} =    Testing
${EVENT_DESC} =    Testing legocart application
${EVENT_START_DATE} =  16-11-2021
${EVENT_START_TIME} =   10:20 PM
${EVENT_END_DATE} =    18-11-2021
${EVENT_END_TIME} =     12:20 PMT
${TASK_TEXT} =  Test1
*** Test Cases ***
#User able to fill all the entries and Register
#    [Tags]  Current
#    Legodesk.Fill all the Details
#    Legodesk.Registering User
## Do email varification manually
#User able to login to the application as lawyer
#    Legodesk.Login User
#
#User able to logout from the application
#    Legodesk.Login User
#    Legodesk.Logout User
#
#User able to verify all the dashboard items
#    Legodesk.Login User
#    Legodesk.Verify the all dashboard sections
#
#User able to login to the application as client
#    Legodesk.Login Client User
#
#User able to logout to the application as client
#    Legodesk.Login Client User
#    Legodesk.Logout Client User
#
#User logs in and verifies the cases
#    Legodesk.Login User
#    Legodesk.Verify cases functionality working as expected

User login and verifies all the functionalities of calender
    Legodesk.Login User
    Legodesk.Verify calender functionalities working as expected

