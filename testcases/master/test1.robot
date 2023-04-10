*** Settings ***
Library           SeleniumLibrary

# Suite Setup       Open Browser    https://www.jotform.com/212934779973474    Chrome
# Suite Teardown    Close Browser
Resource    ../../testdata/environment.robot
Resource    ../../testdata/test_data.robot
*** Test Cases ***
Student Registration Form Test
    # Input valid data
    Open Browser   https://www.jotform.com/212934779973474    Chrome
    Input Text    //*[@id='input_48']      ${test_data_firstname}
    Input Text     //*[@id='input_49']       ${test_data_lastname}
    Input Text    //*[@id='input_14']      ${test_data_student_id}
    Input Text    //*[@id='input_6']           ${test_data_email}
    Input Text    //*[@id='input_27_full']   ${test_data_mobile_number}
    Click Element  //*[@id='label_input_51_0']
     Select From List by Value    //*[@id='input_3']    ${test_data_gender}
    # Submit the form and verify success message
    Click Button  //*[@id='form-pagebreak-next_76']
    Wait Until Page Contains    ${test_data_sccess_submit_message}
    Close Browser
Valid Input Test
    # Input valid data
    Open Browser   https://www.jotform.com/212934779973474    Chrome
    Input Text    //*[@id='input_48']      ${test_data_firstname}
    Input Text     //*[@id='input_49']       ${test_data_lastname}
    Input Text    //*[@id='input_14']      ${test_data_student_id}
    Input Text    //*[@id='input_6']           ${test_data_email}
    Input Text    //*[@id='input_27_full']   ${test_data_mobile_number}
    Click Element  //*[@id='label_input_51_0']
     Select From List by Value    //*[@id='input_3']    ${test_data_gender}
    # Submit the form and verify success message
    # Click Button  //*[@id='form-pagebreak-next_76']
    Close Browser

All Input Fields Required Test
    # Leave all fields blank and verify error message
    Open Browser   https://www.jotform.com/212934779973474    Chrome
    Click Button  //*[@id='form-pagebreak-next_76']
    Wait Until Page Contains    This field is required.
    Close Browser

First Name Required Test
    # Leave first name blank and verify error message
     Open Browser   https://www.jotform.com/212934779973474    Chrome
    Input Text     //*[@id='input_49']       ${test_data_lastname}
    Input Text    //*[@id='input_14']      ${test_data_student_id}
    Input Text    //*[@id='input_6']           ${test_data_email}
    Input Text    //*[@id='input_27_full']  ${test_data_mobile_number}
    Click Element  //*[@id='label_input_51_0']
     Select From List by Value    //*[@id='input_3']    ${test_data_gender}
    Click Button  //*[@id='form-pagebreak-next_76']
    Wait Until Page Contains    This field is required.
    Close Browser
Last Name Required Test
    # Leave last name blank and verify error message
     Open Browser   https://www.jotform.com/212934779973474    Chrome
    Input Text    //*[@id='input_48']      ${test_data_firstname}
    Input Text    //*[@id='input_14']      ${test_data_student_id}
    Input Text    //*[@id='input_6']           ${test_data_email}
    Input Text    //*[@id='input_27_full']   ${test_data_mobile_number}
    Click Element  //*[@id='label_input_51_0']
     Select From List by Value    //*[@id='input_3']    ${test_data_gender}
    Click Button  //*[@id='form-pagebreak-next_76']
    Wait Until Page Contains    This field is required.
    Close Browser
Student ID Required Test
    # Leave student ID blank and verify error message
     Open Browser   https://www.jotform.com/212934779973474    Chrome
    Input Text    //*[@id='input_48']      ${test_data_firstname}
    Input Text     //*[@id='input_49']       ${test_data_lastname}
    Input Text    //*[@id='input_6']           ${test_data_email}
    Input Text    //*[@id='input_27_full']   ${test_data_mobile_number}
    Click Element  //*[@id='label_input_51_0']
     Select From List by Value    //*[@id='input_3']    ${test_data_gender}
    Click Button  //*[@id='form-pagebreak-next_76']
    Wait Until Page Contains    This field is required.
    Close Browser
Email Required Test
    # Leave email blank and verify error message
     Open Browser   https://www.jotform.com/212934779973474    Chrome
    Input Text    //*[@id='input_48']      ${test_data_firstname}
    Input Text     //*[@id='input_49']       ${test_data_lastname}
    Input Text    //*[@id='input_14']      ${test_data_student_id}
    Input Text    //*[@id='input_27_full']   ${test_data_mobile_number}
    Click Element  //*[@id='label_input_51_0']
     Select From List by Value    //*[@id='input_3']    ${test_data_gender}
    Click Button  //*[@id='form-pagebreak-next_76']
    Wait Until Page Contains    This field is required.
    Close Browser
Mobile Number Required Test
    # Leave mobile number blank and verify error message
     Open Browser   https://www.jotform.com/212934779973474    Chrome
    Input Text    //*[@id='input_48']      ${test_data_firstname}
    Input Text     //*[@id='input_49']       ${test_data_lastname}
    Input Text    //*[@id='input_14']      ${test_data_student_id}
    Input Text    //*[@id='input_6']           ${test_data_email}
    Click Element  //*[@id='label_input_51_0']
     Select From List by Value    //*[@id='input_3']    ${test_data_gender}
    Click Button  //*[@id='form-pagebreak-next_76']
    Wait Until Page Contains    This field is required.
    Close Browser
Invalid First Name Type Test
    # Input an invalid first name and verify error message
     Open Browser   https://www.jotform.com/212934779973474    Chrome
    Input Text    //*[@id='input_48']      12345
    Input Text     //*[@id='input_49']       ${test_data_lastname}
    Input Text    //*[@id='input_14']      ${test_data_student_id}
    Input Text    //*[@id='input_6']           ${test_data_email}
    Input Text    //*[@id='input_27_full']   ${test_data_mobile_number}
    Click Element  //*[@id='label_input_51_0']
     Select From List by Value    //*[@id='input_3']    ${test_data_gender}
    Click Button  //*[@id='form-pagebreak-next_76']
    Wait Until Page Contains    This field should be a string.
    Close Browser
Invalid Last Name Type Test
    # Input an invalid last name and verify error message
     Open Browser   https://www.jotform.com/212934779973474    Chrome
    Input Text    //*[@id='input_48']      ${test_data_firstname}
    Input Text     //*[@id='input_49']       12345
    Input Text    //*[@id='input_14']      ${test_data_student_id}
    Input Text    //*[@id='input_6']           ${test_data_email}
    Input Text    //*[@id='input_27_full']   ${test_data_mobile_number}
    Click Element  //*[@id='label_input_51_0']
     Select From List by Value    //*[@id='input_3']    ${test_data_gender}
    Click Button  //*[@id='form-pagebreak-next_76']
    Wait Until Page Contains    This field should be a string.
    Close Browser
Invalid Email Format Test
    # Input an invalid email format and verify error message
     Open Browser   https://www.jotform.com/212934779973474    Chrome
    Input Text    //*[@id='input_48']      ${test_data_firstname}
    Input Text     //*[@id='input_49']       ${test_data_lastname}
    Input Text    //*[@id='input_14']      ${test_data_student_id}
    Input Text    //*[@id='input_6']           hehe    
    Input Text    //*[@id='input_27_full']   ${test_data_mobile_number}
    Click Element  //*[@id='label_input_51_0']
     Select From List by Value    //*[@id='input_3']    ${test_data_gender}
    Click Button  //*[@id='form-pagebreak-next_76']
    Wait Until Page Contains    Enter a valid e-mail address
    Close Browser
Invalid Mobile Number Type Test
    # Input an invalid mobile number and verify error message
     Open Browser   https://www.jotform.com/212934779973474    Chrome
    Input Text    //*[@id='input_48']      ${test_data_firstname}
    Input Text     //*[@id='input_49']       ${test_data_lastname}
    Input Text    //*[@id='input_14']      ${test_data_student_id}
    Input Text    //*[@id='input_6']           ${test_data_email}
    Input Text    //*[@id='input_27_full']   abc
    Click Element  //*[@id='label_input_51_0']
     Select From List by Value    //*[@id='input_3']    ${test_data_gender}
    Click Button  //*[@id='form-pagebreak-next_76']
    Wait Until Page Contains    This field should be a number.
    Close Browser
