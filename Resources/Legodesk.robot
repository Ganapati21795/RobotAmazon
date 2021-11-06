*** Settings ***
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/SignIn.robot
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
    LandingPage.Logout

Verify the all dashboard sections
    Dashboard.Verify page loaded
    Dashboard.Verify View Profile
    Dashboard.Verify User able to view Activity
    Dashboard.Verify user able to add the contact