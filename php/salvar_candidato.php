<?php
<link rel="stylesheet" href="../assets/css/style.css">
// salvar_candidato.php — SGC
require_once 'conexao.php';

// Verifica se o formulário foi submetido via POST
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    header('Location: ../cadastro.html');
    exit;
}

// Sanitiza as entradas para evitar SQL Injection
$nome       = mysqli_real_escape_string($conexao, trim($_POST['nome']));
$nomeMae    = mysqli_real_escape_string($conexao, trim($_POST['nomeMae']));
$email      = mysqli_real_escape_string($conexao, trim($_POST['email']));
$telefone   = mysqli_real_escape_string($conexao, trim($_POST['telefone']));
$data_nascimento = mysqli_real_escape_string($conexao, trim($_POST['data_nascimento']));
$linkedin = mysqli_real_escape_string($conexao, trim($_POST['linkedin']));
$portfolio = mysqli_real_escape_string($conexao, trim($_POST['portfolio']));
$logradouro = mysqli_real_escape_string($conexao, trim($_POST['logradouro']));
$numero = mysqli_real_escape_string($conexao, trim($_POST['numero']));
$complemento = mysqli_real_escape_string($conexao, trim($_POST['complemento']));
$bairro = mysqli_real_escape_string($conexao, trim($_POST['bairro']));
$cidade = mysqli_real_escape_string($conexao, trim($_POST['cidade']));
$estado = mysqli_real_escape_string($conexao, trim($_POST['estado']));
$cep = mysqli_real_escape_string($conexao, trim($_POST['cep']));
$pais = mysqli_real_escape_string($conexao, trim($_POST['pais']));

// Validação mínima
if (empty($nome) || empty($email)) {
    die('Erro: Nome e e-mail são obrigatórios. <a href="../cadastro.html">Voltar</a>');
}

// Monta e executa a query INSERT

$sql_endereco = "INSERT INTO endereco
(logradouro, numero, complemento, bairro, cidade, estado, cep, pais)
VALUES
('$logradouro', '$numero', '$complemento', '$bairro', '$cidade', '$estado', '$cep', '$pais')";

$resultado_endereco = mysqli_query($conexao, $sql_endereco);

if (!$resultado_endereco) {
    die('Erro ao salvar endereço: ' . mysqli_error($conexao));
}

$idEndereco = mysqli_insert_id($conexao);

$sql = "INSERT INTO candidato
(idEndereco, nome, nomeMae, email, telefone, data_nascimento, foto_perfil, linkedin, portfolio, nome_assinatura, data_assinatura)
VALUES
('$idEndereco', '$nome', '$nomeMae', '$email', '$telefone', '$data_nascimento', NULL, '$linkedin', '$portfolio', '$nome', CURDATE())";

$resultado = mysqli_query($conexao, $sql);

if (!$resultado) {
    die('Erro ao salvar candidato: ' . mysqli_error($conexao));
}

$id_inserido = mysqli_insert_id($conexao);
// Redireciona para o currículo recém-criado
header('Location: curriculo.php?id=' . $id_inserido);
exit;
?>