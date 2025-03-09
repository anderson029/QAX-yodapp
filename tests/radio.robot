*** Settings ***
Resource    ../resources/base.resource

Task Setup    Start session
Task Teardown    Close session

*** Test Cases ***
Deve selecionar a opção Java
    [Tags]    radioButton    smoke    radio
 
    Get started
    Navigate to    Check e Radio
    Go to item    Botões de radio    Escolha sua linguagem preferida      
    
    Click Element    xpath=//android.widget.RadioButton[normalize-space(@text)="Java"]