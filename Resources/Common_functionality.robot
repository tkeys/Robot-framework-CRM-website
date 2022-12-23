*** Settings ***
Library    SeleniumLibrary

Resource    ../Resources/my_variables.robot


*** Keywords ***
Start test case
    open browser    ${SITE_URL}    ${BROWSER}
    maximize browser window
    sleep    1s


Finish Testcase
    close browser
