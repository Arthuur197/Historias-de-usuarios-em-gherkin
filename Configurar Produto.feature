#language: pt

Funcionalidade: Tela de seleção do produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
/E escolher a quantidade
Para depois inserir no carrinho


Contexto:
Dado que eu acesse o site da EBAC-SHOP

    Cenário: Configuração de produto
    Dado que eu acesse a página do produto e escolha a cor, o tamanho, e a quantidade do produto
    Quando eu clicar em adicionar ao carrinho
    Então o produto deve ser adicionado no carrinho


    Cenário: Limite de produtos
    Dado que eu já tenha adicionado os produtos no carrinho
    Quando eu tentar finalizar a compra
    Então deve permitir apenas 10 produtos por venda
        

    Cenário: Voltar ao estado original
    Dado que eu esteja na página do "Carrinho de compras"
    Quando eu clicar no botão "Limpar"
    Então as opções escolhidas devem ser resetadas
