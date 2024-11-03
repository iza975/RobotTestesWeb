
*** Settings ***   # caminhos dentro de ourtros arquivos
Resource       ../resources/EditarNomeVazio.resource
# Test Setup       Abrir o navegador   
# Test Teardown    Fechar o navegador

*** Test Cases ***
Cenario de Testes: Editar Campo Nome Completo Vazio
    
    Passo 1 - Acessar a pagina de login
    Passo 2 - Digitar um e-mail válido 
    Passo 3 - Digitar uma senha valida
    Passo 4 - clicar no botao entrar   
    Passo 5 - Acessar Tela de Cadastro de Usuários
    Passo 6 - Editar Nome e Email
    Passo 7 - Clicar no Botão Salvar Alterações 
    Passo 8 - verificar mensagem de erro
    




    # Resultado esperado verificar se a mensagem de erro correta é exibida quando o campo "Nome Completo" 
    # é deixado vazio e o usuário tenta salvar as alterações.



