*** Settings ***
Resource    ../resources/base.robot


*** Variables ***
${GENÊRO_MALE}                       //input[@id='gender-male']
${GENÊRO_FEMALE}                     //input[@id=gender-female]
${FIRST_NAME}                        //input[@id='FirstName']
${LAST_NAME}                         //input[@id='LastName']
${CADASTRO_INPUT_EMAIL}              //input[@id='Email']
${SENHA_INPUT}                       //input[@id='Password']
${CONFIRMAR_SENHA}                   //input[@id='ConfirmPassword']
${REGISTRO}                          //input[@id='register-button']
${MENSAGEM_REGISTRO}                 xpath=//div[@class='result' and normalize-space(text())='Your registration completed']
${ERRO_EMAIL_EXISTENTE}              xpath=//div[@class='message-error']//li[normalize-space(text())='The specified email already exists']
${ERRO_SENHA}                        xpath=//span[contains(text(), 'password and confirmation password do not match')]
${REQUIRED_FIRST_NAME}               xpath=//span[contains(text(), 'First name is required')]
${REQUIRED_LAST_NAME}                xpath=//span[@for='LastName' and contains(text(), 'Last name is required.')]
${REQUIRED_EMAIL}                    xpath=//span[@for='Email' and contains(text(), 'Email is required.')]
${REQUIRED_SENHA}                    xpath=//span[@for='Password' and contains(text(), 'Password is required.')]
${REQUIRED_CONFIRMAR_SENHA}          xpath=//span[@for='ConfirmPassword' and contains(text(), 'Password is required.')]
${SENHA_6_CARACTERES}                xpath=//span[@for='Password' and contains(text(), 'The password should have at least 6 characters.')]
${WRONG_EMAIL}                       xpath=//span[@for='Email' and contains(text(), 'Wrong email')]
${SENHAS_DIFERENTES}                 xpath=//span[@for='ConfirmPassword' and contains(text(), '')]
${CONFIRMAR}                         xpath=//input[@class='button-1 register-continue-button' and @value='Continue']
${HEADER_DEMO}                       xpath=//div[@class='header-logo']//img
${PAGE_REGISTRO}                     xpath=//div[@class='page registration-page']
${DOMINIO_EXTENSAO}                  @email.invalid
${cadastro.email.valido}             TESTE@gmail.com

*** Keywords ***

inserir dados de cadastro
    [Arguments]    ${primeiro_nome}    ${ultimo_nome}    ${email}    ${senha}    ${senha_confirmar}    ${genero}=Male
    IF    '${genero}' == 'Male'
        Click Element    ${GENÊRO_MALE}
    ELSE IF    '${genero}' == 'Female'
        Click Element    ${GENÊRO_FEMALE}
    END
    Input Text    ${FIRST_NAME}    ${primeiro_nome}
    Input Text    ${LAST_NAME}    ${ultimo_nome}
    Input Text    ${CADASTRO_INPUT_EMAIL}    ${email}
    Input Text    ${SENHA_INPUT}    ${senha}
    Input Text    ${CONFIRMAR_SENHA}    ${senha_confirmar}
    Click Element    ${REGISTRO}

