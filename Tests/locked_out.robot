
*** Settings ***
Documentation     A test suite with a single test for locked_out_user login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Locked Out User Login
    Open Browser To Login Page
    Input Username    locked_out_user
    Input Password    secret_sauce
    Submit Credentials
    Page Should Contain Element     css=*[data-test="error"]
    Element Text Should Be  css=*[data-test="error"]    Epic sadface: Sorry, this user has been locked out.
    [Teardown]    Close Browser
