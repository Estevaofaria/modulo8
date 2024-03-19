#language: pt

Funcionalidade: Tela de cadastro checkout
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
para finalizar minha compra

Contexto: Ser cadastrado com todos os dados obrigatórios

Cenario: Concluir cadastro com campos obrigatórios marcados em asterisco 
Quando : For preenchido os campos marcados em asterisco 
E : for informado e-mail válidos
Entao : deve exibir uma mensagem de "Cadastro realizado com sucesso"

Cenario : Válidar e-mail para o cadastro
Quando : Preencher os dados obrigatórios
E : Nao informar um <e-mail> valido
Entao : Informar uma <mensagem> de erro "e-mail inválido"

Cenario : Validação dos campos
Quando : Não preencher os campos marcados por asterisco 
E : clicar em cadastrar
Entao : deve exibir a <mensagem> de "prrencha os campos obrigatórios"

Exemplos: 
|senha| |e-mail| |mensagem|
|null|    |null|   |preencha os campos obrigatórios"
|1234|  |testemodulo8@ebac.com"| |"e-mail inválido"|
                 





