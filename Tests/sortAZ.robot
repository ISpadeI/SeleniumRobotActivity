
*** Settings ***
Documentation     A test suite with a single test for sorting items by Name from A to Z.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Sort Name (A to Z)
    Open Browser To Login Page
    Input Username    standard_user
    Input Password    secret_sauce
    Submit Credentials
    Select From List By Value   css=*[data-test="product_sort_container"]   az
    ${result}=  Get Selected List Label     css=*[data-test="product_sort_container"]
    Should Be Equal     ${result}   Name (A to Z)
    [Teardown]    Close Browser
