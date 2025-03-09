*** Settings ***
Resource    ../resources/base.resource

Task Setup    Start session
Task Teardown    Close session

*** Test Cases ***
Deve escolher o nível Jedi e confirmar o cadastro
  [Tags]    jedi    smoke    spinner

  Get started
  Navigate to    Formulários
  Go to item    Cadastro    Crie sua conta.

  Fill form    Jedi    Andy    adn@teste.com    1234     
  
  Wait Until Page Contains    Tudo certo, boas vindas ao Yodapp! 

Deve escolher o nível outros e confirmar o cadastro
  [Tags]    outros    smoke    spinner

  Get started
  Navigate to    Formulários
  Go to item    Cadastro    Crie sua conta.

  Fill form    Outros    Andy    adn@teste.com    1234     
  
  Wait Until Page Contains    Tudo certo, boas vindas ao Yodapp!

Deve exibir a mensagem de erro quando não preencher o nome
  [Tags]    nameInvalid    smoke    spinner
  
  Get started
  Navigate to    Formulários
  Go to item    Cadastro    Crie sua conta.

  Fill form    level=Jedi    email=adn@teste.com    password=1234   
  
  Wait Until Page Contains    Seu nome você deve informar!  

Deve exibir a mensagem de erro quando não preencher o email
  [Tags]    nameInvalid    smoke    spinner
  
  Get started
  Navigate to    Formulários
  Go to item    Cadastro    Crie sua conta.

  Fill form    level=Jedi    name=Andy    password=1234   
  
  Wait Until Page Contains    Email válido você deve informar!

Deve exibir a mensagem de erro quando não preencher a senha
  [Tags]    nameInvalid    smoke    spinner
  
  Get started
  Navigate to    Formulários
  Go to item    Cadastro    Crie sua conta.

  Fill form    level=Jedi    name=Andy    email=adn@teste.com
  
  Wait Until Page Contains    Uma senha você deve informar!   

*** Keywords ***
Fill form
  [Arguments]    ${level}    ${name}=${EMPTY}    ${email}=${EMPTY}    ${password}=${EMPTY}    

  Input Text       id=com.qaxperience.yodapp:id/etUsername     ${name}
  Input Text       id=com.qaxperience.yodapp:id/etEmail        ${email}
  Input Text       id=com.qaxperience.yodapp:id/etPassword     ${password}
  Click Element    id=android:id/text1

  Wait Until Element Is Visible    xpath=//android.widget.ListView
  Click Text    ${level}
  Click Text    CADASTRAR