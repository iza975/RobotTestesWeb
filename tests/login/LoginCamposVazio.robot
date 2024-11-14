
*** Settings ***   # caminhos dentro de ourtros arquiv
Resource       ../../resources/login/LoginCamposVazios.resource


Test Setup     Abrir o navegador   
Test Teardown  Fechar o navegador 


*** Test Cases ***  
Cenario de teste: Login com os campos e-mail e senha vazios
    Abrir o navegador
    Passo 1 - Acessar a pagina de login 
    Passo 2 - Deixar o campo email vazio 
    Passo 3 - Deixar o campo senha vazio
    Passo 4 - clicar no botao entrar 
    Passo 5 - verificar mensagem de erro   
    

    
     




# Regra Negocio
#   Se ao clicar no botão [Entrar] um ou mais campos estiverem em branco,
#   ...    deve ser apresentada a mensagem "O campo [nome_campo] 
#   ...    é obrigatório" para cada campo obrigatório em branco. 
# Mensagem de ERRO
# O email é obrigatório 
# A senha é obrigatória