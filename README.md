# Robot_framework_project

# Contents:
- base directory: common functionality file
- drivers: webdrivers for chrome, edge and firefox.
- freshteam_login: invalid messaga file, login2 valid credential file.
- pages: login page, main page and about page.
- screenchot: screenshots of outputs.
- test data: invalid data excel sheet.



# commit one: Robot Framework Invalid test case  
- For invalid, we first launch the browser directing us to freshteam login.
- After launch it clicks on sign up, then on pricing.
- In that it clicks on sign up for free.
- It shows a signup message where input data is given to sign up.
- The input data is fetched through a excel sheet invalid_data.xlsx folder from pages.
- In this file, the input of the already signed up member is given, TC3 and TC4 are the test cases.
- If input data is repeats it pop up a message box "You are already signed up" message box.
- For the next input if first name field is given blank.
- It shows the error message as 'First name is required'.
- After that message, it captures the screenshot and stores in screenshot directory before it closes the browser.


# commit two: Robot Framework valid login test case
- For invalid, we first launch the browser directing us to freshteam login.
- After launch it clicks on sign up, then on pricing.
- In that it clicks on sign up for free.
- It shows a signup message where input data is given to sign up.
- The input data for 2 test cases are fetched using a test template called Valid Credential Template.
- After the fetch and filling up of data it clicks on signup.
- Two person's data are taken for test cases i.e, TC1 and TC2.
- Lastly, it captures the screenshot and stores in screenshot directory before it closes the browser.
