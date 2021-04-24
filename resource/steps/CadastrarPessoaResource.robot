*** Settings ***
Documentation  Keywords com os steps da suíte de Cadastrar Pessoa
Resource    ../variables/Globais.robot
Resource    ../variables/MappingCadastrarPessoa.robot
Library     AppiumLibrary

*** Variables ***

*** Keywords ***
# ---- DADO
Dado que estou na tela inicial
    Open Application    ${REMOTE_URL}   platformName=${platformName}
    ...   deviceName=${deviceName}  app=${app}  ensureWebviewsHavePages=${ensureWebviewsHavePages}

# ---- E
E acesso a tela de "CadastroPessoas"
    Wait Until Element Is Visible    ${TELA_CADASTRO.buttonCadastrarPessoa}
    Click Element    ${TELA_CADASTRO.buttonCadastrarPessoa}

E solicito a criação da pessoa
    Wait Until Element Is Visible    ${TELA_CADASTRO.botaoCadastrar}
    Click Element    ${TELA_CADASTRO.botaoCadastrar}

E não informo o campo "${NOME_CAMPO}"
    Wait Until Element Is Visible    ${TELA_CADASTRO.textInput${NOME_CAMPO}}

E informo o campo "Nome"
    Wait Until Element Is Visible    ${TELA_CADASTRO.textInputNome}
    Input Text    ${TELA_CADASTRO.textInputNome}    Clarice Ferreira

# ---- QUANDO
Quando informo os meus dados cadastrais
    Wait Until Element Is Visible    ${TELA_CADASTRO.textInputNome}
    Input Text    ${TELA_CADASTRO.textInputNome}    Clarice Ferreira
    Wait Until Element Is Visible    ${TELA_CADASTRO.textInputEmail}
    Input Text    ${TELA_CADASTRO.textInputEmail}    clarice@email.com

# ---- ENTÃO
Então o app exibe a mensagem "${MENSAGEM}"
    Wait Until Element Is Visible    ${TELA_CADASTRO.mensagemError}
    ${ERRO}     Get Text    ${TELA_CADASTRO.mensagemError}
    Should Be Equal    ${MENSAGEM}    ${ERRO}

Então o app exibe uma mensagem de sucesso
    ${CONTEXTS}     Get Current Context
    Log To Console    --->${CONTEXTS}
