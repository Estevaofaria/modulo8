            #language: pt

            Funcionalidade: Configuração de produto
            Como cliente da EBAC-SHOP
            Quero configurar o produto de acordo com tamanho e cor
            e escolher a quantidade
            para depois inserir no carrinho

            Contexto: Acesso ao sit da EBAC-SHOP

            Cenário: configurando produto
            Dado : que eu acesse a aba de compra do sit
            Quando :eu escolher o produto
            E :configurar <size> e <color>
            Então : escolho tamanho <XS S M L XL> e cor <Blue Orange Red>

            Cenário: número limite de produto
            Dado : que eu acesse o EBAC-SHOP
            Quando : eu escolher meu <produto>
            E : configurar <size> <color>
            Então : deve permitir apenas 10produtos por venda

            Cenário: clicar no botão: limpar o carrinho
            Dado :que eu acesse a página da EBAC-SHOP
            Quando :eu clicar no botão <limpar>
            E :retornar a Tela
            Então : deve voltar ao estado original

            Exemplos:
            | size        |  | color           |  | produto   |  | limpar          |
            | XS S M L XL |  | Blue Orange Red |  | Máximo 10 |  | Retornar a tela |
            | S           |  | Orange          |  | 9         |  | retornar a tela |
            | M           |  | Red             |  | 8         |  | retornar a tela |
            | L           |  | Blue            |  | 7         |  | retornar a tela |
            | XL          |  | Orange          |  | 6         |  | retornar a tela |

