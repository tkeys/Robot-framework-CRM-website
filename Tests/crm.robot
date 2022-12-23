*** Settings ***
Documentation    Testing the crm site from Udemy Robot framework course

Resource    ../Resources/Common_functionality.robot
Resource    ../Resources/crm_app.robot





*** Test Cases ***
Testing the CRM site from Udemy Robot framework course

    Start test case
    User login
    Create new customer
    Finish Testcase








