            #language: pt

            Funcionalidade: Tela de cadastro - checkout
            Como cliente da EBAC-SHOP
            Quero fazer o login (autentificação na plataforma)
            Para visualizar meus pedidos

            Contexto: Que eu acesse o sit da EBAC-SHOP

            Cenário: Dados válidos
            Dado : Que eu preencha <e-mail> e <senha>
            Quando : eu apertar em cadastrar
            Então : devo ser direcionado para a tela de checkout

            Cenário:  Senha ou usuário inválido
            Dado : que eu preencha <e-mail> e <senha>
            E : inserir o e-mail "exemplomodulo8@ebac.com"
            Então : deve exibir uma mensagem de alerta "e-mail e ou senha inválido"

            Exemplos:
            | usuário                   |  | senha    |  | mensagem                   |
            | "exemplomodulo8@ebac.com" |  | 1234     |  | e-mail e ou senha inválido |
            | "joaodascouves@ebac.com"  |  | 78910    |  | e-mail inválido            |
            | "exemploemail@ebac.com"   |  | senha123 |  | e-mail inválido            |

