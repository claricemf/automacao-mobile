*** Settings ***
Documentation  Keywords com os steps da suíte de Cadastrar Pessoa
Resource    ../variables/Globais.robot
Resource    ../variables/MappingCadastrarPessoa.robot
Library     AppiumLibrary

*** Keywords ***
# ---- DADO
Dado que estou na tela de "CadastroPessoas"
    Wait Until Element Is Visible    ${TELA_CADASTRO.buttonCadastrarPessoa}
    Click Element    ${TELA_CADASTRO.buttonCadastrarPessoa}

# ---- E
E não informo o campo "${NOME_CAMPO}"
    Wait Until Element Is Visible    ${TELA_CADASTRO.textInput${NOME_CAMPO}}

E informo o campo "Nome"
    Informar valor válido no campo Nome

E informo os meus dados cadastrais
    Informar valor válido no campo Nome
    Informar valor não duplicado no campo Email

E cadastro pessoa com o email "${EMAIL}"
    Informar valor válido no campo Nome
    Informar valor válido no campo Email    ${EMAIL}
    Clicar no botão Cadastrar nova pessoa

E informo novamente o email "${EMAIL}"
    Informar valor válido no campo Nome
    Informar valor válido no campo Email    ${EMAIL}

# ---- QUANDO
Quando solicito a criação da pessoa
    Clicar no botão Cadastrar nova pessoa

Quando solicito novamente a criação da pessoa
    Clicar no botão Cadastrar nova pessoa
    Clicar no botão Cadastrar nova pessoa

# ---- ENTÃO
Então o app exibe a mensagem no campo "${MENSAGEM}"
    Wait Until Element Is Visible    ${TELA_CADASTRO.mensagemError}
    ${ERRO}     Get Text    ${TELA_CADASTRO.mensagemError}
    Should Be Equal    ${MENSAGEM}    ${ERRO}

Então o app exibe uma mensagem de sucesso
    Wait Until Page Contains    Cadastro realizado com sucesso

Então o app exibe o erro "${MENSAGEM}"
    Wait Until Page Contains    ${MENSAGEM}

# ---- STEPS
Acessar a tela inicial do app
    Set Appium Timeout    20
    Open Application    ${REMOTE_URL}   platformName=${platformName}
    ...   deviceName=${deviceName}      app=${app}
    ...   ensureWebviewsHavePages=${ensureWebviewsHavePages}

Clicar no botão Cadastrar nova pessoa
    Wait Until Element Is Visible    ${TELA_CADASTRO.botaoCadastrar}
    Click Element    ${TELA_CADASTRO.botaoCadastrar}

Informar valor válido no campo Nome
    Wait Until Element Is Visible    ${TELA_CADASTRO.textInputNome}
    Input Text    ${TELA_CADASTRO.textInputNome}    Clarice Ferreira

Informar valor válido no campo Email
    [Arguments]  ${EMAIL}
    Wait Until Element Is Visible    ${TELA_CADASTRO.textInputEmail}
    Input Text    ${TELA_CADASTRO.textInputEmail}    ${EMAIL}

Informar valor não duplicado no campo Email
    Wait Until Element Is Visible    ${TELA_CADASTRO.textInputEmail}
    ${EMAIL}    Obter Email não duplicado
    Input Text    ${TELA_CADASTRO.textInputEmail}    ${EMAIL}

Obter Email não duplicado
    ${time}     Get Time    epoch
    ${EMAIL}    Set Variable      clariceeee${time}@email.com
    [Return]    ${EMAIL}
