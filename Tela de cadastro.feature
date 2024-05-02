#languafe: pt

Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu acesse o carrinho de compras no site da EBAC-SHOP

Cenário: Página de cadastro
Dado que eu acesse o "Carrinho de compras"
E clique em "Concluir Compra"
Então deve ser direcionado para a página de cadastro

Cenário:
Dado 
E 
Então 

Cenário:
Dado que eu insira o <email> com formato inválido
E 
Então deve exibir uma mensagem de alerta: "Formato de email inválido!"

Cenário:
Dado que eu tente cadastrar com algum campo vazio
Então deve exibir uma mensagem de alerta: "Necessário preencher todos os campos!"

| Campo     | Exemplo         |
| Nome      | João            |
| Sobrenome | Silva           |
| País      | Brasil          |
| Endereço  | Rua A, 123      |
| Cidade    | São Paulo       |
| CEP       | 99999-999       |
| Telefone  | 99 99999-9999   |
| Email     | joao123@example.com |
