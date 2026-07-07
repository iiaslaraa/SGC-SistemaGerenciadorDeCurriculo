# 📄 Sistema de Gerenciamento de Currículos (SGC)

Sistema web desenvolvido para a disciplina de Desenvolvimento Web do Curso Técnico em Informática da Escola Técnica de Brasília (ETB).

O SGC (Sistema de Gerenciamento de Currículos) permite cadastrar, consultar, editar e excluir informações de candidatos, armazenando todos os dados em um banco de dados MySQL.

---

## Objetivo

Desenvolver uma aplicação web capaz de gerenciar currículos de candidatos de forma simples, organizada e intuitiva, aplicando conceitos de desenvolvimento web, banco de dados relacionais e integração entre PHP e MySQL.

---

## Funcionalidades

* Cadastro de candidatos
* Cadastro de endereço
* Visualização dos currículos cadastrados
* Listagem de candidatos
* Atualização de informações
* Exclusão de candidatos
* Integração com banco de dados MySQL
* Interface desenvolvida em HTML e CSS

---

## Tecnologias Utilizadas

| Tecnologia | Finalidade             |
| ---------- | ---------------------- |
| PHP        | Backend                |
| MySQL      | Banco de Dados         |
| phpMyAdmin | Administração do banco |
| HTML5      | Estrutura das páginas  |
| CSS3       | Estilização            |
| SQL        | Manipulação dos dados  |

---

## Arquitetura do Sistema

O sistema segue uma arquitetura simples baseada em páginas PHP conectadas a um banco de dados MySQL.

Fluxo principal:

* Cadastro do candidato
* Armazenamento no banco
* Listagem dos candidatos
* Visualização do currículo
* Atualização das informações
* Exclusão dos registros

---

## Estrutura do Projeto

```text
SGC
│
├── cadastro.html
├── conexao.php
├── salvar_candidato.php
├── listar_candidatos.php
├── curriculo.php
├── editar_candidato.php
├── atualizar_candidato.php
├── excluir_candidato.php
├── sobre.html
├── index.html
├── style.css
│
├── projeto_sgc_iasmimllc(banco).sql
└── BancoDeDados(Modelo Relacional).mwb
```

---

## Banco de Dados

O banco de dados foi modelado utilizando o MySQL Workbench e implementado em MySQL.

O projeto utiliza tabelas relacionadas para armazenar:

* Candidatos
* Endereços
* Formação Acadêmica
* Experiência Profissional
* Certificações
* Cursos de Qualificação

A estrutura relacional garante a integridade dos dados por meio de chaves primárias e estrangeiras.

---

## Como Executar

### Pré-requisitos

* XAMPP
* Apache
* MySQL
* phpMyAdmin
* Navegador Web

### Passos

1. Clone este repositório.
2. Copie a pasta do projeto para `htdocs`.
3. Inicie o Apache e o MySQL no XAMPP.
4. Importe o arquivo SQL no phpMyAdmin.
5. Configure os dados de conexão em `conexao.php`.
6. Acesse:

```
http://localhost/SGC/
```

---

## Melhorias Futuras

* Upload de foto do candidato
* Pesquisa avançada
* Filtros por formação
* Login de usuários
* Controle de permissões
* Exportação de currículos em PDF
* Responsividade para dispositivos móveis


---

## Licença

Este projeto foi desenvolvido exclusivamente para fins acadêmicos.
