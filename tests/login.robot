*** Settings ***
Resource    ../resources/base.resource

*** Test Cases ***

Deve fazer login com sucesso
    [Tags]    loginOk    login    smoke
    Start session
    Get started
    Navigate to    Formulários
    Go to item     Login    Olá Padawan, vamos testar o login?

    Input Credentials    yoda@qax.com    jedi
    Wait Until Page Contains    Boas vindas, logado você está.     

    Close session

Não deve logar com credenciais incorretas
    [Tags]    loginNok    login    smoke
    Start session
    Get started
    Navigate to    Formulários
    Go to item     Login    Olá Padawan, vamos testar o login?

    Input Credentials    teste@qax.com     jedi
    Wait Until Page Contains    Oops! Credenciais incorretas.     

    Close session

*** Keywords ***
Input Credentials
    [Arguments]    ${email}    ${password}
    Input Text     id=com.qaxperience.yodapp:id/etEmail    ${email}
    Input Text     id=com.qaxperience.yodapp:id/etPassword    ${password}
    Click Text     ENTRAR