#language: pt

Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer meu cadastro
Para finalizar minha compra


Contexto:
Dado que eu acesse o carrinho de compras no site da EBAC-SHOP


    Cenário: Página de cadastro
    Dado que eu acesse o "Carrinho de compras"
    Quando eu clicar em "Concluir Compra"
    Então deve ser direcionado para a página de cadastro


    Cenário: Validação de email
    Dado que eu insira o <email> com formato inválido no campo "email"
    Quando eu tentar concluir o cadastro
    Então deve exibir uma mensagem de alerta: "Formato de email inválido!"

        Exemplos:
        | email                  | mensagem                     |
        | joaosilva@example      | "Formato de email inválido!" |
        | joaosilva@example.     | "Formato de email inválido!" |
        | joaosilva@example com  | "Formato de email inválido!" |
        | joaosilva@example..com | "Formato de email inválido!" |
        | joaosilva example.com  | "Formato de email inválido!" |
        | joaosilvaexample.com   | "Formato de email inválido!" |
        | joaosilva@example.com  | "Formato de email válido!"   |


    Cenário: Verificação de campos vazios durante o cadastro
    Dado que eu deixe algum campo vazio na tela de cadastro
    Quando eu tentar concluir o cadastro
    Então deve exibir uma mensagem de alerta: "Necessário preencher todos os campos!"

        Exemplos:
        | Campo     | Exemplo               | Mensagem             |
        | Nome      | João                  |                      |
        | Sobrenome |                       | "Campo Obrigatório!" |
        | País      | Brasil                |                      |
        | Endereço  | Rua A, 123            |                      |
        | Cidade    | São Paulo             |                      |
        | CEP       | 99999-999             |                      |
        | Telefone  | 99 99999-9999         |                      |
        | Email     | joaosilva@example.com |                      |