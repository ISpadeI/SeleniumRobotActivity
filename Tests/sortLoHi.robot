
*** Settings ***
Documentation     A test suite with a single test for sorting items by Price from low to high.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Sort Price (Low to High)
    Open Browser To Login Page
    Input Username    standard_user
    Input Password    secret_sauce
    Submit Credentials
    Select From List By Value   css=*[data-test="product_sort_container"]   lohi
    ${result}=  Get Selected List Label     css=*[data-test="product_sort_container"]
    Should Be Equal     ${result}   Price (low to high)
    [Teardown]    Close Browser
