
*** Settings ***
Resource         ../../resources/email/EmailFormatoInvalido.resource
Test Setup     Abrir o navegador 
Test Teardown  Fechar o navegador 

*** Test Cases ***  
Cenario de teste: Editar Nome e preencher o email sem @
    Passo 1 - Acessar a pagina de login  
    Passo 2 - Digitar um e-mail válido 
    Passo 3 - Digitar uma senha valida
    Passo 4 - clicar no botao entrar 
    Passo 5 - Acessar Tela de Cadastro de Usuários 
    Passo 6 - Editar Nome e preencher o email sem @
    Passo 7 - Clicar no Botão Salvar Alterações
    Passo 8 - Verificar Mensagem de Erro de Email Inválido


   # resultadado esperado deve exibir mensagem de erro
    