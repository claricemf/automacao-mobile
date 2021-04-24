*** Settings ***
Documentation  Keywords com os steps da suíte de Cadastrar Pessoa
Resource    ../variables/Globais.robot
Library     AppiumLibrary

*** Variables ***

*** Keywords ***
# ---- DADO
Dado que estou na tela de inicial
    Open Application    ${REMOTE_URL}   platformName=${platformName}
    ...   deviceName=${deviceName}  app=${app}  ensureWebviewsHavePages=${ensureWebviewsHavePages}

# ---- E
E acesso a tela de "CadastroPessoas"
    Wait Until Element Is Visible    id=com.example.cursoappium:id/button_cadastrar
    Click Element    id=com.example.cursoappium:id/button_cadastrar

E solicito a criação da pessoa
    # id=com.example.cursoappium:id/BotaoCadastrar
    Wait Until Element Is Visible    id=com.example.cursoappium:id/BotaoCadastrar
    Click Element    id=com.example.cursoappium:id/BotaoCadastrar

# ---- QUANDO
Quando informo os meus dados cadastrais
# id=com.example.cursoappium:id/TextInputNome
    Wait Until Element Is Visible    id=com.example.cursoappium:id/TextInputNome
    Input Text    id=com.example.cursoappium:id/TextInputNome    Clarice Ferreira
# id=com.example.cursoappium:id/TextInputEmail
    Wait Until Element Is Visible    id=com.example.cursoappium:id/TextInputEmail
    Input Text    id=com.example.cursoappium:id/TextInputEmail    clarice@email.com

# ---- ENTÃO
