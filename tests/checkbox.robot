*** Settings ***
Resource    ../resources/base.resource

Task Setup    Start session
Task Teardown    Close session

*** Test Cases ***
Deve marcar as techs que usam appium
    [Tags]    checkbox    smoke

    Get started
    Navigate to    Check e Radio
    Go to item    Checkbox    Marque as techs que usam Appium      

    @{techs}    Create List    Ruby     Python    Java    Javascript    C#    Robot Framework
    
    FOR    ${tech}    IN    @{techs}
      Click Element    xpath=//android.widget.CheckBox[contains(@text, "${tech}")]
    END