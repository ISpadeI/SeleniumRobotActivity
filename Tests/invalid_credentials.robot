
*** Settings ***
Documentation     A test suite with a single test for invalid credentials login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Invalid Credentials Login
    Open Browser To Login Page
    Input Username    standard_user
    Input Password    secret_sauces
    Submit Credentials
    Page Should Contain Element     css=*[data-test="error"]
    Element Text Should Be  css=*[data-test="error"]    Epic sadface: Username and password do not match any user in this service
    [Teardown]    Close Browser
