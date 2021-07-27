#language:pt
@CadastroUser
Funcionalidade: Cadastro

Sendo um cliente, quero realizr meu cadastro

@cadastro
Cenario: Fazer cadastro

    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro completo
@login
Cenario: Login de usuario

    Dado que acesso a página de login
    Quando preencho  os campos nome e senha
    E clico em login
    Então valido a mensagem de usuario logado