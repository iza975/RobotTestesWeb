
*** Settings ***   # caminhos dentro de ourtros arquivos
Resource    ../resources/LoginEmailinvalido.resource
Test Setup     Abrir o navegador   
Test Teardown  Fechar o Navegador

*** Test Cases ***  
Cenario de teste:Login com e-mail inválido e senha válida
    Abrir o navegador
    Passo 1 - Acessar a pagina de login 
    Passo 2 - Digitar um e-mail inválido e verificar a mensagem de erro 
    Passo 3 - Digitar uma senha válida
    Passo 4 - clicar no botao entrar
    Fechar o Navegador


# Passo 6 -verificar se um simbolo ou mensagem de erro aparece 
    
   