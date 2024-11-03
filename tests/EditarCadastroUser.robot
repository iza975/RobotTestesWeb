*** Settings ***
Resource       ../resources/EditarCadastroUser.resource
Test Setup     Abrir o navegador 
Test Teardown  Fechar o navegador 

*** Test Cases ***  
Cenario de teste: Editar Todos os campos da tela e clicar em salvar
    Passo 1 - Acessar a pagina de login 
    Passo 2 - Digitar um e-mail válido 
    Passo 3 - Digitar uma senha valida
    Passo 4 - clicar no botao entrar 
    Passo 5 - Acessar Tela de Cadastro de Usuários 
    Passo 6 - Editar Nome E Email
    Passo 7 - Clicar no Botão Salvar Alterações
    # Passo 8 - Validar que os dados foram Atualizados


    

# Resultado esperado: o usuario poder editar todos os campos na tela de cadastro

