# Manual do Usuário

## Sistema de Gerenciamento de Currículos (SGC)

---

# 1. Introdução

O Sistema de Gerenciamento de Currículos (SGC) foi desenvolvido para facilitar o gerenciamento de informações de candidatos, permitindo cadastrar, consultar, editar e excluir currículos por meio de uma interface web.

Este manual apresenta as principais funcionalidades do sistema e orienta o usuário sobre sua utilização.

---

# 2. Acessando o Sistema

Após a instalação e configuração do ambiente, abra um navegador de sua preferência e acesse:

```text
http://localhost/SGC/
```

A página inicial do sistema será exibida.

---

# 3. Página Inicial

A página inicial apresenta as opções disponíveis para navegação no sistema.

A partir dela, o usuário poderá acessar:

* Cadastro de candidatos
* Listagem de candidatos
* Informações sobre o projeto

---

# 4. Cadastro de Candidatos

Na tela de cadastro, o usuário deverá preencher as informações solicitadas sobre o candidato.

Os principais dados cadastrados são:

* Nome
* Nome da mãe
* Data de nascimento
* E-mail
* Telefone
* LinkedIn
* Portfólio
* Endereço
* Formação acadêmica
* Experiência profissional
* Certificações
* Cursos de qualificação

Após preencher todas as informações, clique no botão **Salvar Candidato** para registrar os dados no banco de dados.

---

# 5. Listagem de Candidatos

A tela de listagem apresenta todos os candidatos cadastrados no sistema.

Nesta página é possível:

* Visualizar os candidatos cadastrados.
* Acessar o currículo completo.
* Editar informações.
* Excluir registros.

---

# 6. Visualização do Currículo

Ao selecionar um candidato, o sistema apresenta todas as informações cadastradas em formato de currículo.

As informações exibidas incluem:

* Dados pessoais
* Endereço
* Formação acadêmica
* Experiência profissional
* Certificações
* Cursos de qualificação

---

# 7. Atualização de Informações

Caso seja necessário alterar algum dado, selecione a opção **Editar**.

O sistema abrirá um formulário contendo as informações atuais do candidato.

Após realizar as alterações, clique em **Salvar** para atualizar os dados.

---

# 8. Exclusão de Candidatos

Para remover um candidato do sistema:

1. Acesse a listagem de candidatos.
2. Localize o registro desejado.
3. Clique em **Excluir**.
4. Confirme a operação.

Após a confirmação, o candidato e os registros relacionados serão removidos do banco de dados.

---

# 9. Navegação

O sistema foi desenvolvido com uma interface simples e intuitiva, permitindo que o usuário navegue entre as páginas por meio dos menus e links disponíveis.

---

# 10. Recomendações de Uso

Para garantir o correto funcionamento do sistema:

* Mantenha o Apache e o MySQL em execução.
* Não feche o navegador durante operações de cadastro ou atualização.
* Evite cadastrar informações duplicadas.
* Verifique os dados antes de salvar as alterações.

---

# 11. Possíveis Problemas

## A página não abre

Verifique se o Apache está em execução e se o projeto está localizado corretamente na pasta `htdocs`.

---

## Os dados não são salvos

Confirme se o MySQL está em execução e se a conexão com o banco de dados foi configurada corretamente.

---

## Erro ao visualizar candidatos

Verifique se o banco de dados foi importado corretamente e se todas as tabelas foram criadas.

---

# 12. Considerações Finais

O Sistema de Gerenciamento de Currículos foi desenvolvido para proporcionar uma forma simples e organizada de gerenciar currículos de candidatos, aplicando conceitos de desenvolvimento web e banco de dados relacionais.

Em caso de futuras evoluções do projeto, novas funcionalidades poderão ser incorporadas para ampliar os recursos disponíveis aos usuários.
