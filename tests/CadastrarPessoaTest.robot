*** Settings ***
Documentation   Suíte de teste de cadastro de pessoa
Resource   ../resource/steps/CadastrarPessoaResource.robot
Test Teardown     Quit Application
Suite Teardown    Close Application


*** Test Case ***
CT01: Cadastrar Pessoa - Sucesso
    Dado que estou na tela inicial
    E acesso a tela de "CadastroPessoas"
    Quando informo os meus dados cadastrais
    E solicito a criação da pessoa
    Então o app exibe uma mensagem de sucesso

CT02: Cadastrar Pessoa (motivo da falha: campos obrigatórios)
    Dado que estou na tela inicial
    E acesso a tela de "CadastroPessoas"
    E não informo o campo "Nome"
    E solicito a criação da pessoa
    Então o app exibe a mensagem "Entre o nome completo"
    E informo o campo "Nome"
    E não informo o campo "Email"
    E solicito a criação da pessoa
    Então o app exibe a mensagem "Entre um email válido"

# CT03: Cadastrar Pessoa (motivo da falha: call)
