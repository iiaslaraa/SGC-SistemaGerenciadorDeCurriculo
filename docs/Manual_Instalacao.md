# Manual de Instalação

## Sistema de Gerenciamento de Currículos (SGC)

---

# 1. Introdução

Este documento apresenta os procedimentos necessários para instalar e executar o Sistema de Gerenciamento de Currículos (SGC) em um ambiente local.

---

# 2. Requisitos do Sistema

Para executar o projeto é necessário possuir os seguintes softwares instalados:

* XAMPP
* Apache
* MySQL
* phpMyAdmin
* Navegador Web (Google Chrome, Microsoft Edge, Mozilla Firefox ou equivalente)

---

# 3. Clonando o Projeto

Caso o projeto esteja hospedado no GitHub, execute:

```bash
git clone https://github.com/iiaslaraa/SGC_SistemaGerenciadorDeCurriculo.git
```

Ou faça o download do arquivo ZIP e extraia seu conteúdo.

---

# 4. Copiando o Projeto

Copie a pasta do projeto para o diretório **htdocs** do XAMPP.

Exemplo:

```text
C:\xampp\htdocs\SGC
```

---

# 5. Inicializando os Serviços

Abra o **XAMPP Control Panel** e inicie os seguintes serviços:

* Apache
* MySQL

Ambos devem permanecer com o status **Running**.

---

# 6. Configurando o Banco de Dados

1. Abra o navegador.

2. Acesse:

```text
http://localhost/phpmyadmin
```

3. Crie um novo banco de dados utilizando o nome definido no projeto.

4. Selecione o banco criado.

5. Clique na aba **Importar**.

6. Selecione o arquivo:

```text
database/projeto_sgc_iasmimllc(banco).sql
```

7. Clique em **Executar**.

Após a importação, todas as tabelas serão criadas automaticamente.

---

# 7. Configuração da Conexão

Abra o arquivo:

```text
php/conexao.php
```

Verifique se os dados de conexão correspondem à configuração do seu ambiente.

Exemplo:

```php
$host = "localhost";
$usuario = "root";
$senha = "";
$banco = "nome_do_banco";
```

Caso utilize outra senha ou outro nome de banco, ajuste essas informações.

---

# 8. Executando o Sistema

Após concluir as etapas anteriores, abra o navegador e acesse:

```text
http://localhost/SGC/
```

A página inicial do sistema será exibida.

---

# 9. Estrutura Esperada

A estrutura básica do projeto deverá permanecer semelhante à seguinte:

```text
SGC
│
├── assets
├── database
├── docs
├── php
├── cadastro.html
├── index.html
├── sobre.html
└── README.md
```

---

# 10. Solução de Problemas

## O Apache não inicia

* Verifique se a porta 80 está sendo utilizada por outro programa.
* Reinicie o XAMPP.

---

## Erro de conexão com o banco

* Confirme se o MySQL está em execução.
* Verifique os dados de conexão em `conexao.php`.
* Certifique-se de que o banco foi importado corretamente.

---

## Página não encontrada

Verifique se a pasta do projeto está localizada dentro do diretório **htdocs**.

---

## Erro ao importar o banco

Confirme se o arquivo SQL foi importado sem mensagens de erro e se todas as tabelas foram criadas.

---

# 11. Considerações Finais

Após seguir este procedimento, o Sistema de Gerenciamento de Currículos estará pronto para utilização em ambiente local, permitindo o cadastro, consulta, edição e exclusão de candidatos por meio da interface web.
