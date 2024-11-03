
*** Settings ***   # caminhos dentro de ourtros arquivos
Resource       ../resources/EditarNomeCaracteresNumeros.resource
Test Setup        Abrir o navegador   
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenario de Testes: Editar campo "Nome Completo" contendo caracteres inválidos (Especiais)
    Abrir o navegador
    Passo 1 - Acessar a pagina de login
    Passo 2 - Digitar um e-mail válido 
    Passo 3 - Digitar uma senha valida
    Passo 4 - clicar no botao entrar 
    Passo 5 - Acessar Tela de Cadastro de Usuários
    Passo 6 - Editar Nome com caracteres invalidos Numeros (especiais)
    Passo 7 - Clicar no Botão Salvar Alterações
    # Passo 8 - Verificar a mensagem de erro


   # resultado esperado deve exibir mensagem de erro




	
            	