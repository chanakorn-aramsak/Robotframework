*** Settings ***
Library             SeleniumLibrary
Resource            ../../testdata/environment.robot
Resource            ../../testdata/test_data.robot
Resource            ../../keywords/ui/common/commonKeywords.robot
Resource            ../../keywords/ui/page/homepage.robot

Test Teardown       Close All Browsers


*** Test Cases ***
All input field test
    [Tags]    all input
    Open browser student registration form
    Wait student registration load complete
    Input and verify firstname
    Input and verify lastname
    Input and verify gender with male
    Input and verify student_id
    Input and verify mobile_number
    Input and verify email
    Click study time
    Click submit application
    Reload Page


Firstname required test
    [Tags]    firstname
    Open browser student registration form
    Wait student registration load complete
    Click submit application
    Verify firstname is required

Lastname required test
    [Tags]    lastname
    Open browser student registration form
    Wait student registration load complete
    Click submit application
    Verify lastname is required

Gender required test
    [Tags]    gender
    Open browser student registration form
    Wait student registration load complete
    Click submit application

Student ID required test
    [Tags]    student_id
    Open browser student registration form
    Wait student registration load complete
    Click submit application
    Verify student_id is required

Mobile Number required test
    [Tags]    mobile_number
    Open browser student registration form
    Wait student registration load complete
    Click submit application
    Verify mobile_number is required

Email required test
    [Tags]    email
    Open browser student registration form
    Wait student registration load complete
    Click submit application
    Verify email is required

Study Time required test
    [Tags]    study_time
    Open browser student registration form
    Wait student registration load complete
    Click submit application
    Verify study_time is required


Invalid First Name Type Test
    [Tags]    firstname
    Open browser student registration form
    Wait student registration load complete
    Input firstname with number
Invalid Last Name Type Test
    [Tags]    lastname
    Open browser student registration form
    Wait student registration load complete
    Input lastname with number

Invalid StudentId Type Test
    [Tags]    student_id
    Open browser student registration form
    Wait student registration load complete
    Input student_id with character

Invalid Mobile Number Type Test
    [Tags]    mobile_number
    Open browser student registration form
    Wait student registration load complete
    Input mobile_number with character

Verify after submit message
    [Tags]    submit
    Open browser student registration form
    Wait student registration load complete
    Input and verify firstname
    Input and verify lastname
    Input and verify gender with male
    Input and verify student_id
    Input and verify mobile_number
    Input and verify email
    Click study time
    Click submit application
    Verify after click submit application, it will show message
