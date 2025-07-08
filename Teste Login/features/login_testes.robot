Language: Brazilian Portuguese

*** Settings ***
Documentation    Essa suíte testa o sistema de registro da Demo Web Shop
Resource         ../resources/base.robot

Test Setup       Open Browser    browser=chrome
Test Teardown    Close Browser

*** Test Cases ***

CT001 - TUS [cadastro] validar que ao efetuar o cadastro com dados corretos, usuário será cadastrado com sucesso na web
    [Documentation]    Usuário se registra com sucesso
    [Tags]    001
    Dado que estou na página de registro
    Quando insiro os dados válidos
    Então deve aparecer a mensagem "Your registration completed"
    E clicando em continue deve ser redirecionado para a tela inicial

CT002 - TUS [cadastro] validar que ao efetuar o cadastro com um email existente, retornará mensagem de erro na web
    [Documentation]    Usuário tenta se registrar com um e-mail já existente
    [Tags]    002
    Dado que estou na página de registro
    Quando insiro os dados válidos com email já existente
    Então a mensagem de erro "The specified email already exists" deve ser exibida
    E deve permanecer na página de registro

CT003 - TUS [cadastro] validar que ao efetuar o cadastro com senhas diferentes, retornará mensagem de erro na web
    [Documentation]    Usuário insere senhas diferentes no registro
    [Tags]    003
    Dado que estou na página de registro
    Quando insiro os dados válidos com senhas diferentes
    Então deve aparecer a mensagem "The password and confirmation password do not match."
    E deve permanecer na página de registro

CT004 - TUS [cadastro] validar que ao efetuar o cadastro sem preencher os campos obrigatórios, retornará mensagem de erro na web
    [Documentation]    Usuário tenta se registrar sem preencher os campos obrigatórios
    [Tags]    004
    Dado que estou na página de registro
    Quando clico no botão "Register" sem preencher os campos
    Então deve aparecer a mensagem de erro "Preencha todos os campos obrigatórios"
    E deve permanecer na página de registro

CT005 - TUS [cadastro] validar que ao efetuar o cadastro com uma senha muito curta, retornará mensagem de erro na web
    [Documentation]    Usuário tenta se registrar com uma senha muito curta
    [Tags]    005
    Dado que estou na página de registro
    Quando insiro os dados válidos com senhas curtas
    Então deve aparecer a mensagem de erro "The password should have at least 6 characters."
    E deve permanecer na página de registro

CT007 - TUS [cadastro] validar que ao efetuar o cadastro com um email inválido, retornará mensagem de erro na web
    [Documentation]    Usuário tenta se registrar com um e-mail inválido
    [Tags]    007
    Dado que estou na página de registro
    Quando insiro os dados válidos com email inválido
    Então deve aparecer a mensagem de erro "Wrong email"
    E deve permanecer na página de registro

CT008 - TUS [cadastro] validar que ao efetuar o cadastro com espaços em branco nos campos, retornará mensagem de erro na web
    [Documentation]    Usuário tenta se registrar preenchendo apenas espaços em branco nos campos
    [Tags]    008
    Dado que estou na página de registro
    Quando insiro os dados com espaços em branco nos campos
    Então deve aparecer a mensagem de erro "Wrong Email"
    E deve permanecer na página de registro

CT010 - TUS [cadastro] validar que ao efetuar o cadastro com múltiplos espaços entre o email, retornará mensagem de erro na web
    [Documentation]    Usuário tenta se registrar com espaços extras entre o email
    [Tags]    010
    Dado que estou na página de registro
    Quando insiro os dados válidos com email contendo espaços
    Então deve aparecer a mensagem de erro "Wrong email"
    E deve permanecer na página de registro

CT011 - TUS [cadastro] validar que ao efetuar o cadastro sem confirmar a senha, retornará mensagem de erro na web
    [Documentation]    Usuário tenta se registrar sem preencher o campo de confirmação de senha
    [Tags]    011
    Dado que estou na página de registro
    Quando insiro os dados válidos sem confirmar a senha
    Então deve aparecer a mensagem de erro "The password and confirmation password do not match."
    E deve permanecer na página de registro

CT012 - TUS [cadastro] validar que ao efetuar o cadastro sem preencher o campo de senha, retornará mensagem de erro na web
    [Documentation]    Usuário tenta se registrar sem preencher o campo de senha
    [Tags]    012
    Dado que estou na página de registro
    Quando insiro os dados válidos sem preencher o campo de senha
    Então deve aparecer a mensagem de erro "Password is required."
    E deve permanecer na página de registro

CT014 - TUS [cadastro] validar que ao efetuar o cadastro com email com extensão inválida, retornará mensagem de erro na web
    [Documentation]    Usuário tenta se registrar com e-mail com extensão inválida
    [Tags]    014
    Dado que estou na página de registro
    Quando insiro os dados válidos e email com extensão inválida
    Então deve aparecer a mensagem de erro "Wrong email"
    E deve permanecer na página de registro

CT015 - TUS [cadastro] validar que ao efetuar o cadastro com email sem @, retornará mensagem de erro na web
    [Documentation]    Usuário tenta se registrar com e-mail sem o símbolo @
    [Tags]    015
    Dado que estou na página de registro
    Quando insiro os dados válidos sem conter @ no email
    Então deve aparecer a mensagem de erro "Wrong email"
    E deve permanecer na página de registro

CT018 - TUS [cadastro] validar que ao efetuar o cadastro com todos os campos preenchidos corretamente, mas sem selecionar o gênero, retornará mensagem de erro na web
    [Documentation]    Usuário tenta se registrar sem selecionar o gênero
    [Tags]    018
    Dado que estou na página de registro
    Quando insiro os dados válidos mas sem selecionar o gênero
    Então deve aparecer a mensagem "Your registration completed"
    E clicando em continue deve ser redirecionado para a tela inicial

CT019 - TUS [cadastro] validar que ao efetuar o cadastro com email duplicado com letras maiúsculas, retornará mensagem de erro na web
    [Documentation]    Usuário tenta se registrar com e-mail já cadastrado, mas em letras maiúsculas
    [Tags]    019
    Dado que estou na página de registro
    Quando insiro os dados válidos com email já cadastrado em letras maiúsculas
    Então a mensagem de erro "The specified email already exists" deve ser exibida
    E deve permanecer na página de registro

CT020 - TUS [cadastro] validar que ao efetuar o cadastro com nome ou sobrenome com acentuação, usuário será cadastrado com sucesso na web
    [Documentation]    Usuário se registra com acentos em seu nome e sobrenome
    [Tags]    020
    Dado que estou na página de registro
    Quando insiro os dados válidos com nome ou sobrenome com acentuação
    Então deve aparecer a mensagem "Your registration completed"
    E clicando em continue deve ser redirecionado para a tela inicial

CT021 - TUS [cadastro] validar que ao efetuar o cadastro com email com domínio incompleto, retornará mensagem de erro na web
    [Documentation]    Usuário tenta registrar um e-mail com domínio incorreto
    [Tags]    021
    Dado que estou na página de registro
    Quando insiro os dados válidos com email contendo domínio incompleto
    Então deve aparecer a mensagem de erro "Wrong email"
    E deve permanecer na página de registro

CT022 - TUS [cadastro] validar que ao efetuar o cadastro com todos os campos preenchidos com o mesmo valor, retornará mensagem de erro na web
    [Documentation]    Usuário tenta se registrar utilizando o mesmo valor para todos os campos
    [Tags]    022
    Dado que estou na página de registro
    Quando insiro os dados válidos com todos os campos preenchidos com o mesmo valor
    Então deve aparecer a mensagem de erro "Wrong email"
    E deve permanecer na página de registro

CT026 - TUS [cadastro] validar que ao efetuar o cadastro com nome e sobrenome com traços e apóstrofos válidos, usuário será cadastrado com sucesso na web
    [Documentation]    Usuário se registra com traços e apóstrofos no nome e sobrenome
    [Tags]    026
    Dado que estou na página de registro
    Quando insiro os dados válidos com nome e sobrenome contendo traços e apóstrofos válidos
    Então deve aparecer a mensagem "Your registration completed"
    E clicando em continue deve ser redirecionado para a tela inicial

CT027 - TUS [cadastro] validar que ao efetuar o cadastro com senha sem caracteres especiais, usuário será cadastrado com sucesso na web
    [Documentation]    Usuário tenta se registrar com senha sem caracteres especiais
    [Tags]    027
    Dado que estou na página de registro
    Quando insiro os dados válidos com senha válida simples
    Então deve aparecer a mensagem "Your registration completed"
    E clicando em continue deve ser redirecionado para a tela inicial

CT028 - TUS [cadastro] validar que ao efetuar o cadastro com senha contendo apenas números, usuário será cadastrado com sucesso na web
    [Documentation]    Usuário tenta se registrar com senha numérica
    [Tags]    028
    Dado que estou na página de registro
    Quando insiro os dados válidos com senha contendo apenas números
    Então deve aparecer a mensagem "Your registration completed"
    E clicando em continue deve ser redirecionado para a tela inicial

CT029 - TUS [cadastro] validar que ao efetuar o cadastro com senha contendo apenas letras, usuário será cadastrado com sucesso na web
    [Documentation]    Usuário tenta se registrar com senha apenas com letras
    [Tags]    029
    Dado que estou na página de registro
    Quando insiro os dados válidos com senha contendo apenas letras
    Então deve aparecer a mensagem "Your registration completed"
    E clicando em continue deve ser redirecionado para a tela inicial

CT030 - TUS [cadastro] validar que ao efetuar o cadastro com letras maiúsculas no email, usuário será cadastrado com sucesso na web
    [Documentation]    Usuário se registra com letras maiúsculas no e-mail
    [Tags]    030
    Dado que estou na página de registro
    Quando insiro os dados válidos com e-mail contendo letras maiúsculas
    Então deve aparecer a mensagem "Your registration completed"
    E clicando em continue deve ser redirecionado para a tela inicial

CT031 - TUS [cadastro] validar que ao efetuar o cadastro com email preenchido com espaço em branco, retornará mensagem de erro na web
    [Documentation]    Usuário tenta se registrar com o campo de e-mail preenchido com espaço
    [Tags]    031
    Dado que estou na página de registro
    Quando insiro os dados válidos com e-mail preenchido com espaço em branco
    Então deve aparecer a mensagem de erro "Wrong Email"
    E deve permanecer na página de registro

CT032 - TUS [cadastro] validar que ao efetuar o cadastro com todos os campos vazios e clicando diretamente em registro, retornará mensagem de erro na web
    [Documentation]    Usuário clica no botão de registro sem preencher nenhum campo
    [Tags]    032
    Dado que estou na página de registro
    Quando clico no botão "Register" sem preencher os campos
    Então deve aparecer a mensagem de erro "Preencha todos os campos obrigatórios"
    E deve permanecer na página de registro

CT033 - TUS [cadastro] validar que ao efetuar o cadastro com email contendo caractere inválido, retornará mensagem de erro na web
    [Documentation]    Usuário tenta registrar com e-mail que contém vírgula
    [Tags]    033
    Dado que estou na página de registro
    Quando insiro os dados válidos com e-mail contendo caractere inválido
    Então deve aparecer a mensagem de erro "Wrong Email"
    E deve permanecer na página de registro