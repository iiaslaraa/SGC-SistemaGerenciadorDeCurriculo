# Documentação Técnica

## Sistema de Gerenciamento de Currículos (SGC)

---

# 1. Visão Geral

O Sistema de Gerenciamento de Currículos (SGC) é uma aplicação web desenvolvida em PHP com banco de dados MySQL.

O sistema tem como objetivo gerenciar informações de candidatos, permitindo o cadastro, consulta, edição e exclusão de currículos por meio de uma interface simples e intuitiva.

O projeto foi desenvolvido como atividade acadêmica do Curso Técnico em Informática da Escola Técnica de Brasília (ETB).

---

# 2. Objetivo

Desenvolver um sistema web para gerenciamento de currículos, aplicando conceitos de:

* Desenvolvimento Web
* Programação em PHP
* Banco de Dados Relacional
* SQL
* HTML5
* CSS3
* Integração entre aplicação e banco de dados

---

# 3. Arquitetura do Sistema

O sistema segue uma arquitetura tradicional baseada em páginas PHP.

Fluxo da aplicação:

```
Usuário

↓

Interface Web

↓

PHP

↓

MySQL

↓

Resposta ao usuário
```

---

# 4. Tecnologias Utilizadas

| Tecnologia | Finalidade             |
| ---------- | ---------------------- |
| PHP        | Backend                |
| HTML5      | Interface              |
| CSS3       | Estilização            |
| MySQL      | Banco de Dados         |
| phpMyAdmin | Administração do banco |
| SQL        | Manipulação dos dados  |

---

# 5. Estrutura do Projeto

```
SGC
│
├── assets
│
├── database
│
├── docs
│
├── php
│
├── cadastro.html
├── index.html
├── sobre.html
├── README.md
└── .gitignore
```

---

# 6. Banco de Dados

O banco de dados foi modelado utilizando o MySQL Workbench e implementado em MySQL.

O sistema utiliza tabelas relacionadas para armazenar:

* Endereço
* Candidato
* Formação Acadêmica
* Experiência Profissional
* Certificação
* Curso de Qualificação

Os relacionamentos são implementados por meio de chaves primárias e estrangeiras, garantindo a integridade referencial.

---

# 7. Funcionalidades

O sistema disponibiliza as seguintes funcionalidades:

* Cadastro de candidatos
* Cadastro de endereço
* Consulta de candidatos
* Visualização de currículo
* Atualização dos dados
* Exclusão de registros

---

# 8. Estrutura das Páginas

| Arquivo                 | Responsabilidade            |
| ----------------------- | --------------------------- |
| index.html              | Página inicial              |
| cadastro.html           | Cadastro de candidatos      |
| listar_candidatos.php   | Lista de candidatos         |
| curriculo.php           | Exibição do currículo       |
| editar_candidato.php    | Edição dos dados            |
| atualizar_candidato.php | Atualização no banco        |
| excluir_candidato.php   | Exclusão de registros       |
| conexao.php             | Conexão com o banco         |
| sobre.html              | Informações sobre o projeto |

---

# 9. Fluxo de Funcionamento

1. O usuário acessa a página inicial.
2. Seleciona o cadastro de candidato.
3. Preenche os dados solicitados.
4. O PHP recebe as informações.
5. Os dados são gravados no banco MySQL.
6. O candidato passa a estar disponível para consulta.
7. O usuário pode editar ou excluir o cadastro quando necessário.

---

# 10. Segurança

Durante o desenvolvimento foram adotadas medidas básicas, como:

* Organização da conexão com o banco de dados em arquivo separado.
* Utilização de chaves primárias e estrangeiras para garantir a integridade dos dados.
* Separação entre interface e processamento da aplicação.

---

# 11. Melhorias Futuras

As seguintes funcionalidades poderão ser implementadas em versões futuras:

* Sistema de autenticação de usuários.
* Upload de foto do candidato.
* Pesquisa avançada.
* Exportação de currículos em PDF.
* Responsividade para dispositivos móveis.
* Painel administrativo.
* Filtros por formação acadêmica.
* Filtros por experiência profissional.

---

# 12. Considerações Finais

O Sistema de Gerenciamento de Currículos permitiu aplicar conhecimentos de desenvolvimento web, banco de dados relacionais e programação em PHP, consolidando conceitos fundamentais para o desenvolvimento de aplicações web integradas a bancos de dados.
