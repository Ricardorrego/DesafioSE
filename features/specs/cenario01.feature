# language: pt

Funcionalidade: CENÁRIO QUEIMA DE VOUCHER DE LIVRO:

   - Como aluno, Quero criar meu usuário na plataforma inserindo o código de acesso.

  Contexto:
    Dado que eu esteja logado no sistema.

  @criar_novo_cadastro
  Cenario: Criar novo cadastro.
    Dado que eu esteja na pagina de adicionar novo cliente
    #Quando eu realizar o cadastro desse cliente
    #Entao validar que o cadastro do cliente foi realizado com sucesso
