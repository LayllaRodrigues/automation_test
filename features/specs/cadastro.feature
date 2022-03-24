#language: pt


Funcionalidade: Cadastro de usuário
    Sendo o dono de um veiculo
    Quero fazer meu cadastro na Youse
    Para que possa comprar e gerenciar minhas apólices logado

    @cadastro
    Cenário: Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            | nome             | email                   | senha     |
            | Laylla Rodrigues | laylla+aut@youse.com.br | Youse123* |
        Então sou direcionado para a home do usuário


    Esquema do Cenário: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            | nome         | email         | senha         |
            | <nome_input> | <email_input> | <senha_input> |
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | nome_input       | email_input                   | senha_input | mensagem_output                                                      |
            |                  | laylla+aut@youse.com.br       | Youse123*   | Vc deixou seu nome em branco. Conta pra gente qual é? :)             |
            | Laylla Rodrigues |                               | Youse123*   | Vc deixou o e-mail em branco. Sem ele não dá pra continuar, viu?     |
            | Laylla Rodrigues | laylla+aut&youse.com.br       | Youse123*   | Parece que esse e-mail não é válido. Bora digitar de novo?           |
            | Laylla Rodrigues | laylla+aut@youse.com.br       |             | Vc deixou sua senha em branco. E-mail sem senha não funciona, né? ;) |
            | Laylla Rodrigues | laylla.rodrigues@youse.com.br | Youse123*   | já está em uso                                                       |
