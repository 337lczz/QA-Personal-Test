*** Settings ***
Resource    ../resources/base.robot

*** Keywords ***

###DADO

que estou na página de registro
    Go To    https://demowebshop.tricentis.com/register

###QUANDO

insiro os dados válidos
    ${email_valido}=    Free Email
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${email_valido}    ${cadastro.senha}    ${cadastro.senha}

insiro os dados válidos com email já existente
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${cadastro.email_cadastrado}    ${cadastro.senha}    ${cadastro.senha}

insiro os dados válidos com senhas diferentes
    ${email_valido}=    Free Email
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${email_valido}    ${cadastro.senha}    ${cadastro.senha_diferente}

insiro os dados válidos com senhas curtas
    ${email_valido}=    Free Email
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${email_valido}    ${cadastro.senha_curta}    ${cadastro.senha_curta}

insiro os dados válidos com email inválido
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${cadastro.email_invalido}    ${cadastro.senha}    ${cadastro.senha}

insiro os dados com espaços em branco nos campos
    inserir dados de cadastro    ${cadastro.primeiro_nome_espaco}    ${cadastro.ultimo_nome_espaco}    ${cadastro.email_espaco}    ${cadastro.senha_espaco}    ${cadastro.senha_espaco}

insiro os dados válidos com email contendo espaços
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${cadastro.email_espaco}    ${cadastro.senha}    ${cadastro.senha}

insiro os dados válidos sem confirmar a senha
    ${email_valido}=    Free Email
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${email_valido}    ${cadastro.senha}    ${EMPTY}

insiro os dados válidos sem preencher o campo de senha
    ${email_valido}=    Free Email
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${email_valido}    ${EMPTY}    ${EMPTY}

insiro os dados válidos e email com extensão inválida
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${cadastro.email_invalido}    ${cadastro.senha}    ${cadastro.senha}

clico no botão "Register" sem preencher os campos
    Click Element    ${REGISTRO}

insiro os dados válidos sem conter @ no email
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${cadastro.email_arroba}    ${cadastro.senha}    ${cadastro.senha}

insiro os dados válidos mas sem selecionar o gênero
    ${email_valido}=    Free Email
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${email_valido}    ${cadastro.senha}    ${cadastro.senha}

insiro os dados válidos com email já cadastrado em letras maiúsculas
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${cadastro.email_cadastrado_capslock}    ${cadastro.senha}    ${cadastro.senha}

insiro os dados válidos com nome ou sobrenome com acentuação
    ${email_valido}=    Free Email
    inserir dados de cadastro    ${cadastro.primeiro_nome_acento}    ${cadastro.ultimo_nome_acento}    ${email_valido}    ${cadastro.senha}    ${cadastro.senha}

insiro os dados válidos com email contendo domínio incompleto
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${cadastro.email_incompleto}    ${cadastro.senha}    ${cadastro.senha}

insiro os dados válidos com todos os campos preenchidos com o mesmo valor
    inserir dados de cadastro    ${cadastro.primeiro_nome_teste}    ${cadastro.ultimo_nome_teste}    ${cadastro.email_teste}    ${cadastro.senha_teste}    ${cadastro.senha_teste}

insiro os dados válidos com nome e sobrenome contendo traços e apóstrofos válidos
    ${email_valido}=    Free Email
    inserir dados de cadastro    ${cadastro.primeiro_nome_tracos}    ${cadastro.ultimo_nome_tracos}    ${email_valido}    ${cadastro.senha}    ${cadastro.senha}

insiro os dados válidos com senha válida simples
    ${email_valido}=    Free Email
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${email_valido}    ${cadastro.senha_simples}    ${cadastro.senha_simples}

insiro os dados válidos com senha contendo apenas números
    ${email_valido}=    Free Email
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${email_valido}    ${cadastro.senha_simples}    ${cadastro.senha_simples}

insiro os dados válidos com senha contendo apenas letras
    ${email_valido}=    Free Email
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${email_valido}    ${cadastro.senha}    ${cadastro.senha}

insiro os dados válidos com e-mail contendo letras maiúsculas
    ${LETRAS}=    Generate Random String    4    [LETTERS]
    ${EMAIL_ALEATORIO}=    Convert To Upper Case   ${LETRAS}${cadastro.email.valido}
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${EMAIL_ALEATORIO}    ${cadastro.senha}    ${cadastro.senha}

insiro os dados válidos com e-mail preenchido com espaço em branco
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${cadastro.email_espaco}    ${cadastro.senha}    ${cadastro.senha}

insiro os dados válidos com e-mail contendo caractere inválido
    inserir dados de cadastro    ${cadastro.primeiro_nome}    ${cadastro.ultimo_nome}    ${cadastro.email_virgula}    ${cadastro.senha}    ${cadastro.senha}



###E

clico no botão de registro
    Click Element    ${REGISTRO}

### ENTÃO

deve aparecer a mensagem "Your registration completed"
    Wait Until Element Is Visible    ${MENSAGEM_REGISTRO}

a mensagem de erro "The specified email already exists" deve ser exibida
    Page Should Contain Element    ${ERRO_EMAIL_EXISTENTE}

deve aparecer a mensagem "The password and confirmation password do not match."
    Page Should Contain Element    ${ERRO_SENHA}

deve aparecer a mensagem de erro "Preencha todos os campos obrigatórios"
    Page Should Contain Element    ${REQUIRED_EMAIL}

deve aparecer a mensagem de erro "The password should have at least 6 characters."
    Page Should Contain Element    ${SENHA_6_CARACTERES}

deve aparecer a mensagem de erro "Wrong Email"
    Page Should Contain Element    ${WRONG_EMAIL}

deve aparecer a mensagem de erro "The password and confirmation password do not match."
    Page Should Contain Element    ${SENHAS_DIFERENTES}

deve aparecer a mensagem de erro "Password is required."
    Page Should Contain Element    ${REQUIRED_SENHA}

deve aparecer a mensagem de erro "Email is required."
    Page Should Contain Element    ${REQUIRED_EMAIL}

### E

clicando em continue deve ser redirecionado para a tela inicial
    Click Element    ${CONFIRMAR}
    Wait Until Element Is Visible    ${HEADER_DEMO}

deve permanecer na página de registro
    Page Should Contain Element    ${PAGE_REGISTRO}
    