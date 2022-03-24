#language: pt

Funcionalidade: Login

Sendo um usuário cadastrado 
Quero acessar a home de cliente logado da Youse
Para que eu posso ter acesso a minhas apólices

Cenário: Login do usuário

Dado que acesso a página principal
Quando submeto minhas credenciais "laylla+test@youse.com.br" e "Youse123*"
Então sou direcionada para a home do cliente 

Cenário: Tentar logar

Dado que acesso a página principal
    Quando submeto minhas credenciais "<email_input>" e "<senha_input>"
    Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input              | senha_input | mensagem_output                  |
            | laylla+test&youse.com.br | Youse123*   | Usuário e/ou senha inválidos.    |
            | laylla+test@youse.com.br | Youse123    | Usuário e/ou senha inválidos.    |
            |                          | Youse123*   | Oops. Informe um email válido!   |
            | laylla+test@youse.com.br |             | Oops. Informe sua senha secreta! |

