*** Settings ***
Library  SeleniumLibrary
Library  String

Resource       ../resources/ValidarTelaEdicao.resource
Test Setup     Abrir o navegador  
Test Teardown  Fechar o navegador

*** Test Cases ***  
Cenario de teste: Validar Campos Preenchidos na Tela De ediçao
    Realizar login
    Inserir Credenciais válidas e clicar no botao entrar
    Acessar Tela de Cadastro de Usuários e acessar o formulario como os campos ja Preenchidos
    Validar se os campos estão preenchidos com os dados cadastrados, como nome completo e e-mail.

    
# Resultado esperado: Acessar a tela de edição e validar se todos os campos já se encontram prenchidos 
# com os dados cadastrados