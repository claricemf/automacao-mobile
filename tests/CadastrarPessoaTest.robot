*** Settings ***
Documentation   Suíte de teste de cadastro de pessoa
Resource   ../resource/steps/CadastrarPessoaResource.robot

*** Test Case ***
CT01: Cadastrar Pessoa - Sucesso
    Dado que estou na tela de inicial
    E acesso a tela de "CadastroPessoas"
    Quando informo os meus dados cadastrais
    E solicito a criação da pessoa
    Então o app exibe uma mensagem de sucesso
