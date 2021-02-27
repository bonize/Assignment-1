*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Open Lucky Draw
	Open Browser    http://localhost:7272/EventConfirmation.html    chrome
	Title Should Be    Lucky Draw

Register Success
    Input Text    fullname    Somsri
	Input Text    lastname    Sodsai
    Input Text    phone    081-001-1234
	Click Button    registerButton
