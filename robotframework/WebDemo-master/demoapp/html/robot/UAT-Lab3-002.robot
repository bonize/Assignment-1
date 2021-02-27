*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Open Lucky Draw
	Open Browser    http://localhost:7272/EventConfirmation.html    chrome
	Title Should Be    Lucky Draw

Empty First Name
	Input Text    lastname    Sodsai
    Input Text    phone    081-001-1234
	Click Button    registerButton

Open Lucky Draw
	Open Browser    http://localhost:7272/EventConfirmation.html    chrome
	Title Should Be    Lucky Draw

Empty Last Name
	Input Text    fullname    Somsri
    Input Text    phone    081-001-1234
	Click Button    registerButton
	
Open Lucky Draw
	Open Browser    http://localhost:7272/EventConfirmation.html    chrome
	Title Should Be    Lucky Draw

Empty First Name and Last Name
    Input Text    phone    081-001-1234
	Click Button    registerButton
	
Open Lucky Draw
	Open Browser    http://localhost:7272/EventConfirmation.html    chrome
	Title Should Be    Lucky Draw

Empty Phone Number
	Input Text    fullname    Somsri
	Input Text    lastname    Sodsai
	Click Button    registerButton
	
Open Lucky Draw
	Open Browser    http://localhost:7272/EventConfirmation.html    chrome
	Title Should Be    Lucky Draw
	
Empty Last Name
	Input Text    fullname    Somsri
	Input Text    lastname    Sodsai
	Input Text    phone    1234
	Click Button    registerButton