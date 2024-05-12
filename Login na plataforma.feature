#language: pt

Funcionalidade: Login na plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos


Contexto: 
Dado que eu acesse o site da EBAC-SHOP

    Cenário: Login na plataforma
    Dado que eu clique em "Minha Conta"
    Quando eu inserir o usuario e senha corretos
    Então deve ser direcionado para a tela de checkout

        Exemplos:
        | usuario      | senha          | ação                       |
        | joaosilva    | Senh@123@      | direcionar para o checkout |

    Cenário: Validação de autenticação
    Dado que eu insira o usuario e/ou a senha incorretos
    Quando eu tentar fazer o login
    Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos!"

        Exemplos:
        | usuario     | senha       |  mensagem                     |
        | joaosilva   | sgfusufh    | "Usuário ou senha inválidos!" |
        | joaosilva   |             | "Usuário ou senha inválidos!" |
        |             | Senh@123@   | "Usuário ou senha inválidos!" |
        |             |             | "Usuário ou senha inválidos!" |