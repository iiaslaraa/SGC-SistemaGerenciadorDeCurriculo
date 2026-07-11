<div align="center">

# 📄 Sistema de Gerenciamento de Currículos (SGC)

### *Curriculum Management System*

Projeto acadêmico desenvolvido durante o **Curso Técnico em Informática** da **Escola Técnica de Brasília (ETB)**.

Aplicando conceitos de **Desenvolvimento Web**, **PHP**, **MySQL**, **Modelagem de Banco de Dados** e **CRUD**.

<br>

![Status](https://img.shields.io/badge/Status-Concluído-success?style=for-the-badge)

![PHP](https://img.shields.io/badge/PHP-8.x-777BB4?style=for-the-badge\&logo=php\&logoColor=white)

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge\&logo=mysql\&logoColor=white)

![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge\&logo=html5\&logoColor=white)

![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge\&logo=css3\&logoColor=white)

![License](https://img.shields.io/badge/Licença-Acadêmica-blue?style=for-the-badge)

</div>

---

# 📚 Sobre o Projeto

O **Sistema de Gerenciamento de Currículos (SGC)** é uma aplicação web desenvolvida para centralizar o gerenciamento de informações de candidatos.

O sistema permite cadastrar, consultar, editar e excluir currículos por meio de uma interface intuitiva, utilizando **PHP** para o backend e **MySQL** para persistência dos dados.

O projeto foi desenvolvido como atividade acadêmica, aplicando conceitos de desenvolvimento web, banco de dados relacionais e integração entre frontend e backend.

---

# 🎯 Objetivos

* Desenvolver uma aplicação web utilizando PHP.
* Aplicar operações CRUD.
* Integrar a aplicação ao MySQL.
* Utilizar banco de dados relacional.
* Organizar informações de candidatos de forma centralizada.
* Aplicar boas práticas de desenvolvimento web.

---

# ✨ Funcionalidades

* Cadastro de candidatos
* Cadastro de endereços
* Visualização de currículos
* Listagem de candidatos
* Atualização de informações
* Exclusão de registros
* Integração com banco de dados MySQL
* Interface desenvolvida em HTML5 e CSS3

---

# 🛠️ Tecnologias Utilizadas

| Tecnologia | Utilização             |
| ---------- | ---------------------- |
| PHP        | Backend                |
| MySQL      | Banco de Dados         |
| phpMyAdmin | Administração do banco |
| HTML5      | Estrutura das páginas  |
| CSS3       | Estilização            |
| SQL        | Persistência dos dados |

---

# 🏛️ Arquitetura

O sistema segue uma arquitetura tradicional baseada em PHP com separação entre interface, processamento e banco de dados.

Fluxo principal:

```text
Usuário

↓

Páginas HTML

↓

Scripts PHP

↓

Banco MySQL

↓

Retorno para Interface
```

---

# 📂 Estrutura do Projeto

```text
SGC
│
├── index.html
├── cadastro.html
├── sobre.html
│
├── conexao.php
├── salvar_candidato.php
├── listar_candidatos.php
├── curriculo.php
├── editar_candidato.php
├── atualizar_candidato.php
├── excluir_candidato.php
│
├── style.css
│
├── projeto_sgc_iasmimllc(banco).sql
│
└── BancoDeDados(Modelo Relacional).mwb
```

---

# 🗄️ Banco de Dados

O banco foi modelado utilizando o **MySQL Workbench** e implementado em **MySQL**.

O sistema possui tabelas responsáveis pelo gerenciamento de:

* Candidatos
* Endereços
* Formação Acadêmica
* Experiência Profissional
* Certificações
* Cursos de Qualificação

As tabelas são relacionadas através de chaves primárias e estrangeiras, garantindo a integridade dos dados.

---

# 🚀 Como Executar

## Pré-requisitos

* XAMPP
* Apache
* MySQL
* phpMyAdmin
* Navegador Web

## Instalação

Clone o repositório.

```bash
git clone https://github.com/iiaslaraa/SGC-SistemaGerenciadorDeCurriculo.git
```

Copie o projeto para a pasta **htdocs** do XAMPP.

Inicie o Apache e o MySQL.

Abra o phpMyAdmin.

Importe o arquivo:

```
projeto_sgc_iasmimllc(banco).sql
```

Configure a conexão no arquivo:

```
conexao.php
```

Acesse:

```
http://localhost/SGC/
```

---

# 📌 Estrutura do Sistema

O sistema é composto pelas seguintes páginas:

| Página                  | Função                      |
| ----------------------- | --------------------------- |
| index.html              | Página inicial              |
| cadastro.html           | Cadastro de candidatos      |
| listar_candidatos.php   | Lista de candidatos         |
| curriculo.php           | Visualização do currículo   |
| editar_candidato.php    | Alteração dos dados         |
| atualizar_candidato.php | Atualização das informações |
| excluir_candidato.php   | Exclusão do candidato       |
| sobre.html              | Informações sobre o projeto |

---

# 📈 Melhorias Futuras

* Sistema de autenticação
* Upload de foto do candidato
* Pesquisa avançada
* Exportação para PDF
* Responsividade para dispositivos móveis
* Dashboard administrativo
* Filtros por formação acadêmica
* Filtros por experiência profissional


---

# 📄 Licença

Este projeto foi desenvolvido exclusivamente para fins acadêmicos.

Sua utilização é permitida para estudos e aprendizagem.



---
