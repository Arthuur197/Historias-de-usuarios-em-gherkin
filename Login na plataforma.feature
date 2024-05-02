    #language: pt

    Funcionalidade: Login na plataforma
    Como cliete da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

        Contexto: 
        Dado que eu acesse o site da EBAC-SHOP

        Cenário: Login na plataforma
        Dado que eu clique em "Minha Conta"
        E insira o <usuario> e a <senha> corretos
        Então deve ser direcionado para a tela de checkout

        Cenário:
        Dado que eu insira o <usuario> e/ou a <senha> incorrretos
        Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos!"

        Exemplos:
        | usuario            | senha            | mensagem                      |
        | <usuario invalido> | <senha invalida> | "Usuário ou senha inválidos!" |
        | <usuario valido>   | <senha invalida> | "Usuário ou senha inválidos!" |
        | <usuario invalido> | <senha valida>   | "Usuário ou senha inválidos!" |
        | <usuario valido>   | <senha valida>   | "Bem vindo(a) <usuario>!"     |





