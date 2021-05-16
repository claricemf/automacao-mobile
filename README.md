**Automação Mobile do app Curso Appium (Cadastrar Pessoa)**

Este projeto tem como objetivo a automatização dos cenários de testes para a tela de Cadastrar Pessoa do app Curso Appium. O app estará disponível brevemente na Play Store, mas por enquanto temos o apk dentro da pasta deste projeto.

___

**Estrutura do Projeto:**

Eu estou utilizando a seguinte estrutura para este projeto:

```
hews-hacker-news/
  resource/
      apk/
          Appium_Test.apk
      steps/
          CadastrarPessoaResource.robot
      variables/
          Globais.robot
          MappingCadastrarPessoa.robot
  tests/
      CadastrarPessoaTest.robot

```

🗂 **Uma breve descrição das pastas do projeto:**

resource >> apk - Contém o arquivo apk do app Curso Appium.

resource >> steps - Contém os step's / keyword's dos casos de testes.

resource >>  variables - Variáveis globais e o mapping dos campos da tela do app que estão sendo utilizados nos casos de testes.

tests - Casos de testes descritos em linguagem natural semelhante ao BDD.
___

🎯  O que eu estou utilizando:

Robotframework<br>
AppiumLibrary<br>

🛠 Como instalar?

Observação: Python e pip deverão estar previamente instalados em sua máquina.

Execute o arquivo requirements.txt utilizando o seguinte comando no seu path:

```
pip install -r requirements.txt
```
___

💻  **Executar o projeto**

Execute o projeto utilizando o seguinte comando no seu terminal dentro da pasta "tests" do projeto:

```
robot -d ./logs CadastrarPessoaTest.robot
```
___

📝  **Reporte de Execução**

O robotframework cria automaticamente a pasta de logs com os arquivos log.html e report.html após a execução do projeto.

___
