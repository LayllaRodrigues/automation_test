#language: pt

Funcionalidade: cotação auto

    Sendo um cliente novo da Youse
    Quero acessar a pagina de ofertas
    Para escolher um plano para o meu seguro

    @auto
    Cenário: Login do usuário

        Dado que acesso a página de ofertas e seleciono o produto auto
        Quando preencho meus dados cadastrais
        E seleciono meu plano
        E realizo o pagamento
        Então minha apólice é emitida 