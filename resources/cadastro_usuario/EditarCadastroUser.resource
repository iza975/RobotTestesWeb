**** Settings ***
Library    SeleniumLibrary    
Library    String
                          

*** Variables ***
${CADASTROS_BUTTON}         //*[@id="Cadastros"]/span     # Botao de cadastroda interface  CADASTRO
${USUARIOS_BUTTON}         //*[@id="Usuários"]/span        # botao de usuarios interface CADASTRO
${EDITAR_CADASTRO_BUTTON}   id=edit                          # botao cadastro interface CADASTRO
${FULL_NAME_FIELD}          id=fullName                  # ID do campo de nome completo
${EMAIL_FIELD}              id=mail                      # ID do campo de e-mail
${SAVE_BUTTON}              id=save                      # ID do botão de salvar
${NEW_FULL_NAME}            Nome Completo Cadastrado        # Novo nome para inserir
${NEW_EMAIL}                sysadmintestetdshvsvsd  
${urlBase}                  https://automacao.qacoders.dev.br/
${emailInput}               id=email                     # define a variavel email login
${emailValido}              sysadmin@qacoders.com
${senhaInput}               id=password                  # define a variavel senha login
${senhaValida}              1234@Test
${botaoInput}               id=login                     # define a variavel botao entrar
${ERROR_MESSAGE_LOCATOR}    xpath=//p[contains(@class, "css-18xtib3")]  # Localização da mensagem de erro
${EXPECTED_ERROR_TEXT}      Digite um email válido
#${novo_nome_cadastrado}     AAAATesteJoao RonBugado


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome 
    Maximize Browser Window   
Fechar o navegador
    Close Browser   
Passo 1 - Acessar a pagina de login
    Open Browser    browser=chrome
    Maximize Browser Window   
    Go To    url=${urlBase}
Passo 2 - Digitar um e-mail válido 
    Wait Until Element Is Visible    locator=${emailInput}    # esperar ate que o elemento esteja  vizivel # espera a informaçao de qual lugar esta esse elemento
    Input Text                       locator=${emailInput}  text=${emailValido}
    #sleep  5   # para  aumentar o tempo da tela aberta  nao e uma boa pratica
Passo 3 - Digitar uma senha valida
    Wait Until Element Is Visible    locator=${senhaInput}   # esperar ate que o elemento esteja  vizivel # espera a informaçao de qual lugar esta esse elemento
    Input Password                   locator=${senhaInput}    password=${senhaValida}
    # sleep  5   # para  aumentar o tempo da tela aberta 
Passo 4 - clicar no botao entrar   
    Wait Until Element Is Visible    locator=${botaoInput}   # esperar ate que o elemento esteja  vizivel # espera a informaçao de qual lugar esta esse elemento
    Click Button                     locator=${botaoInput}    
    Sleep    10
Passo 5 - Acessar Tela de Cadastro de Usuários
    Wait Until Element Is Visible    ${CADASTROS_BUTTON}    timeout=30
    Click Element    ${CADASTROS_BUTTON}
    Click Element    ${USUARIOS_BUTTON}
    Wait Until Element Is Visible    id=edit    timeout=30
    Click Element    id=edit
   

Passo 6 - Editar Nome e Email Válidos
    Input Text    ${FULL_NAME_FIELD}    ${NEW_FULL_NAME}
    Input Text    ${EMAIL_FIELD}        ${NEW_EMAIL}

Passo 7 - Clicar no Botão Salvar Alterações
    Click Button    ${SAVE_BUTTON}
  





    

   