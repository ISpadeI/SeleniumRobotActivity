
*** Settings ***
Documentation     A test suite with a single test for problem_user login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Problem User Login
    Open Browser To Login Page
    Input Username    problem_user
    Input Password    secret_sauce
    Submit Credentials
    Welcome Page Should Be Open
    Page Should Not Contain Image   /static/media/sauce-backpack-1200x1500.34e7aa42.jpg
    [Teardown]    Close Browser
