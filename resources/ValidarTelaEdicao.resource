*** Settings ***
Library  SeleniumLibrary         # validar se todos os campos já se encontram prenchidos com os dados cadastrados

*** Variables ***
${CADASTROS_BUTTON}          //*[@id="Cadastros"]/span      
${USUARIOS_BUTTON}          //*[@id="Usuários"]/span 
${EDITAR_CADASTRO_BUTTON}   id=edit 
${FULL_NAME_FIELD}          id=fullName                  
${EMAIL_FIELD}              id=mail                      
${SAVE_BUTTON}              id=save                      
${NEW_FULL_NAME}            AAATesteJoao RonBugado        
${NEW_EMAIL}                sysadmintestetdshvsvsd    
${urlBase}                  https://automacao.qacoders.dev.br/login
${emailInput}               id=email
${emailValido}              sysadmin@qacoders.com
${senhaInput}               id=password
${senhaValida}              1234@Test
${botaoInput}               id=login

${FULL_NAME_EXPECTED}    AAATesteJoao RonBugado
${EMAIL_EXPECTED}           emailcadastrado@example.com

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome 
    Maximize Browser Window   
Fechar o navegador
    Close Browser   
Realizar login
    Open Browser    ${urlBase}    chrome
Inserir Credenciais válidas e clicar no botao entrar
    Wait Until Element Is Visible    ${emailInput}
    Input Text    ${emailInput}    ${emailValido}
    Input Password    ${senhaInput}    ${senhaValida}
    Click Button    ${botaoInput}
Navegar ate a tela de ediçao de usuarios clicando no botao entrar
    Wait Until Element Is Visible    ${CADASTROS_BUTTON}
    Click Element    ${CADASTROS_BUTTON}  
Acessar Tela de Cadastro de Usuários e acessar o formulario como os campos ja Preenchidos
    Wait Until Element Is Visible    ${CADASTROS_BUTTON}    timeout= 5
    Click Element    ${CADASTROS_BUTTON}
    Click Element    ${USUARIOS_BUTTON}
    Wait Until Element Is Visible    id=edit    timeout=10
    Click Element    id=edit
    Click Button    ${SAVE_BUTTON}
    # Wait Until Element Is Visible    ${USUARIOS_BUTTON}
    # Click Element    ${USUARIOS_BUTTON}
Validar se os campos estão preenchidos com os dados cadastrados, como nome completo e e-mail.
    SeleniumLibrary.Element Attribute Value Should Be    id=fullName    value     ${FULL_NAME_FIELD}
    SeleniumLibrary.Element Attribute Value Should Be    id=email    value     ${EMAIL_FIELD}

    Close Browser
    
    # resultado esperado Os campos já devem estar preenchidos ao acessar a tela de edição