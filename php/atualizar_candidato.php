<?php
// atualizar_candidato.php — SGC
require_once 'conexao.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    header('Location: listar_candidatos.php');
    exit;
}

// Valida o ID oculto
if (!isset($_POST['id']) || !is_numeric($_POST['id'])) {
    die('ID inválido.');
}

$id = (int) $_POST['id'];
$idEndereco = (int) $_POST['idEndereco'];

// Sanitiza os campos recebidos
$nome        = mysqli_real_escape_string($conexao, trim($_POST['nome']));
$email       = mysqli_real_escape_string($conexao, trim($_POST['email']));
$telefone    = mysqli_real_escape_string($conexao, trim($_POST['telefone']));
$nomeMae = mysqli_real_escape_string($conexao, trim($_POST['nomeMae']));
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
    die('Erro: Nome e e-mail são obrigatórios. <a href="javascript:history.back()">Voltar</a>');
}

// Monta e executa a query UPDATE
$sql = "UPDATE candidato SET
            nome = '$nome',
            nomeMae = '$nomeMae',
            email = '$email',
            telefone = '$telefone',
            data_nascimento = '$data_nascimento',
            linkedin = '$linkedin',
            portfolio = '$portfolio'
        WHERE idCandidato = $id";

$resultado = mysqli_query($conexao, $sql);


if (!$resultado) {
    die('Erro ao atualizar: ' . mysqli_error($conexao));
}

$sql_endereco = "UPDATE endereco SET
                    logradouro = '$logradouro',
                    numero = '$numero',
                    complemento = '$complemento',
                    bairro = '$bairro',
                    cidade = '$cidade',
                    estado = '$estado',
                    cep = '$cep',
                    pais = '$pais'
                 WHERE idEndereco = $idEndereco";

$resultado_endereco = mysqli_query($conexao, $sql_endereco);

if (!$resultado_endereco) {
    die('Erro ao atualizar endereço: ' . mysqli_error($conexao));
}

// Verifica se alguma linha foi realmente alterada
$linhas_afetadas = mysqli_affected_rows($conexao);

// Redireciona para o currículo atualizado
header('Location: curriculo.php?id=' . $id);
exit;
?>