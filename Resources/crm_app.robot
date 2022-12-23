*** Settings ***

Library    SeleniumLibrary




*** Keywords ***
User login

    click element               xpath=/html/body/nav/ul/li/a
    sleep                       2s
    input text                  xpath=//*[@id="email-id"]     ${EMAIL_ADDY}
    input text                  xpath=//*[@id="password"]     ${PASSWORD}
    click button                xpath= //*[@id="submit-id"]
    sleep                       1s
    wait until page contains    New Customer

Create new customer
    [Documentation]             Precondition: the customer is already logged in
    [Tags]    Smoke
    #Create new customer
    click element               xpath=//*[@id="new-customer"]
    sleep                       1s
    wait until page contains    Add Customer
    input text                  xpath= //*[@id="EmailAddress"]    ${EMAIL_ADDY}
    input text                  xpath = //*[@id="FirstName"]  Thadex
    input text                  xpath = //*[@id="LastName"]   Adejoke
    input text                  xpath = //*[@id="City"]       Ibadan
    click element               //*[@id="StateOrRegion"]
    sleep                       3s
    select from list by value    id=StateOrRegion   TX
    click element               //*[@id="StateOrRegion"]

    select radio button         gender       male


    click button                xpath = //*[@id="loginform"]/div/div/div/div/form/button
    page should contain         Success! New customer added.

    sleep                       10s
