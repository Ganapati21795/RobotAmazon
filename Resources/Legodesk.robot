*** Settings ***
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/Dashboard.robot
Resource  ../Resources/PO/Cases.robot
Resource  ../Resources/PO/Calendar.robot
*** Keywords ***
Fill all the Details
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Entering all the Details
Registering User
    TopNav.User Registration

Login User
    LandingPage.Login
    TopNav.Enter login Details



Logout User
    LandingPage.Logout lawyer

Verify the all dashboard sections
    Dashboard.Verify page loaded
    Dashboard.Verify View Profile
    Dashboard.Verify User able to view Activity
    Dashboard.Verify user able to add the contact
    Dashboard.Verify user able to view and delete the contact information
    Dashboard.Verify user able to view queries
    Dashboard.Verify user trying to add the case
    Dashboard.Verify user able to get the number of case hearings
    Dashboard.Verify user able to get the number of invoice due

Verify cases functionality working as expected
    Cases.Verify user able to verify buttons in the cases

Login Client User
    LandingPage.Login
    TopNav.Select client
    TopNav.Enter Client login Details

Logout Client User
    LandingPage.Logout client

Verify calender functionalities working as expected
    Calendar.Verify user opens the calendar tab
    Calendar.Verify User able to add the event
    Calendar.Verify user opens the calendar tab
    Calendar.Verify User able to close the event
    Calendar.User verifies can able to click on week and day
    Calendar.Verify user opens the calendar tab
    Calendar.User Verifies can able to create a task in the To-Do List