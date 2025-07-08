# 🧪 Testes Automatizados - Cadastro na Demo Web Shop

Este repositório contém uma suíte de testes automatizados utilizando **Robot Framework**, com foco no processo de **cadastro de usuários** no site Demo Web Shop.

## 📌 Objetivo

Validar diferentes cenários de cadastro no sistema Demo Web Shop, tanto positivos quanto negativos, garantindo que o comportamento da aplicação esteja de acordo com o esperado.

## 🛠 Tecnologias Utilizadas

- **Linguagem**: Robot Framework
- **Framework**: SeleniumLibrary
- **Gerenciador de pacotes**: pip
- **Navegador usado**: Chrome
- **Ferramenta de automação**: VS Code / RIDE (opcional)

## ▶️ Como Executar os Testes

1. **Clone o repositório:**
```
git clone https://github.com/337lczz/QA-Personal-Test.git
cd QA-Personal-Test
```

2. **Instale as dependências:**
```
pip install -r requirements.txt
```

4. **Execute os testes:**
```
robot "Teste Login/features/login_testes.robot"
```

## ✅ Estrutura dos Testes

- Os testes estão organizados com nomes claros e padronizados (ex: `CT001`, `CT002`, etc.).
- Cada cenário representa uma validação específica do formulário de cadastro, incluindo:
  - Campos obrigatórios
  - E-mails inválidos ou duplicados
  - Senhas incorretas ou inconsistentes
  - Testes com dados com traços, acentos, espaços e muito mais.

## 🗂 Exemplos de Casos de Teste

- `CT001` - Cadastro com dados válidos
- `CT005` - Cadastro com senha muito curta
- `CT015` - E-mail sem símbolo `@`
- `CT030` - Cadastro com e-mail em letras maiúsculas

> Todos os cenários estão documentados com títulos, descrições e tags para facilitar o entendimento.

## 👤 Autor

Desenvolvido por **Lucas Henrique Dias da Silva**  
🔗 [LinkedIn](https://www.linkedin.com/in/lucas-silva-6b461b346/)  
📧 business.lucashsilva@gmail.com
