*** Settings ***
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/Dashboard.robot

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


Login Client User
    LandingPage.Login
    TopNav.Select client
    TopNav.Enter Client login Details

Logout Client User
    LandingPage.Logout client