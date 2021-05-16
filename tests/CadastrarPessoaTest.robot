*** Settings ***
Documentation   Suíte de teste de Cadastro de Pessoa
Resource   ../resource/steps/CadastrarPessoaResource.robot
Test Setup      Acessar a tela inicial do app
Test Teardown   Close Application

*** Test Case ***
CT01: Cadastrar Pessoa - Sucesso
    [Tags]    CT01CADASTROPESSOA
    Dado que estou na tela de "CadastroPessoas"
    E informo os meus dados cadastrais
    Quando solicito a criação da pessoa
    Então o app exibe uma mensagem de sucesso

CT02: Cadastrar Pessoa (motivo da falha: campo Nome obrigatório)
    [Tags]    CT02CADASTROPESSOA
    Dado que estou na tela de "CadastroPessoas"
    E não informo o campo "Nome"
    Quando solicito a criação da pessoa
    Então o app exibe a mensagem no campo "Entre o nome completo"

CT03: Cadastrar Pessoa (motivo da falha: campo Email obrigatório)
    [Tags]    CT03CADASTROPESSOA
    Dado que estou na tela de "CadastroPessoas"
    E informo o campo "Nome"
    Quando solicito a criação da pessoa
    Então o app exibe a mensagem no campo "Entre um email válido"

CT04: Cadastrar Pessoa (motivo da falha: campo Email duplicado)
    [Tags]    CT04CADASTROPESSOA
    Dado que estou na tela de "CadastroPessoas"
    E cadastro pessoa com o email "email@email"
    E informo novamente o email "email@email"
    Quando solicito novamente a criação da pessoa
    Então o app exibe o erro "Email já cadastrado"
