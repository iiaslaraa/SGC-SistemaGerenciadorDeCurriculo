<?php
// curriculo.php — SGC
require_once 'conexao.php';

// Valida o parâmetro ID
if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    die('ID inválido. <a href="listar_candidatos.php">Voltar</a>');
}

$id  = (int) $_GET['id'];
$sql = "SELECT c.*, e.*
        FROM candidato c
        INNER JOIN endereco e ON c.idEndereco = e.idEndereco
        WHERE c.idCandidato = $id
        LIMIT 1";
$res = mysqli_query($conexao, $sql);

if (!$res || mysqli_num_rows($res) === 0) {
    die('Candidato não encontrado. <a href="listar_candidatos.php">Voltar</a>');
}

$c = mysqli_fetch_array($res, MYSQLI_ASSOC);
$sql_formacao = "SELECT * FROM formacao_academica WHERE idCandidato = $id";
$res_formacao = mysqli_query($conexao, $sql_formacao);

$sql_experiencia = "SELECT * FROM experiencia_profissional WHERE idCandidato = $id";
$res_experiencia = mysqli_query($conexao, $sql_experiencia);

$sql_certificacao = "SELECT * FROM certificacao WHERE idCandidato = $id";
$res_certificacao = mysqli_query($conexao, $sql_certificacao);

$sql_cursos = "SELECT * FROM curso_qualificacao WHERE idCandidato = $id";
$res_cursos = mysqli_query($conexao, $sql_cursos);
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Currículo — <?php echo htmlspecialchars($c['nome']); ?></title>
  <link rel="stylesheet" href="style.css">

</head>

<body>

<!-- CABEÇALHO DO SISTEMA -->
<header>
    <a href="index.html"><img src="logo-SGC-2.1.png" alt="Logo do Site" class="logo"></a>
</header>

<!-- BARRA DE NAVEGAÇÃO -->
  <!-- Cada link aponta para uma funcionalidade -->
  <nav>
    <a href="index.html">Início</a>
    <a href="cadastro.html">Novo Candidato</a>
    <a href="listar_candidatos.php">
      Listar Candidatos
    </a>
    <a href="sobre.html">
      Sobre o SGC
    </a>
  </nav>

  <div class="container">

    <h1>Currículo</h1>
  <h2><?php echo htmlspecialchars($c['nome']); ?></h2>

  <p><b>E-mail:</b> <?php echo htmlspecialchars($c['email']); ?></p>
  <p><b>Telefone:</b> <?php echo htmlspecialchars($c['telefone']); ?></p>
  <!-- <p><b>Data de Nascimento:</b>
     <?php echo htmlspecialchars($c['data_nascimento']); ?></p> -->

 <h3>Formação Acadêmica</h3>
<?php while ($f = mysqli_fetch_assoc($res_formacao)) { ?>
  <p>
    <b><?php echo htmlspecialchars($f['curso']); ?></b><br>
    <?php echo htmlspecialchars($f['instituicao']); ?><br>
    <?php echo htmlspecialchars($f['grau']); ?>
  </p>
<?php } ?>

<h3>Experiência Profissional</h3>
<?php while ($xp = mysqli_fetch_assoc($res_experiencia)) { ?>
  <p>
    <b><?php echo htmlspecialchars($xp['cargo']); ?></b><br>
    <?php echo htmlspecialchars($xp['empresa']); ?><br>
    <?php echo nl2br(htmlspecialchars($xp['descricao_atividades'])); ?>
  </p>
<?php } ?>

<h3>Certificações</h3>
<?php while ($cert = mysqli_fetch_assoc($res_certificacao)) { ?>
  <p>
    <b><?php echo htmlspecialchars($cert['nome_certificacao']); ?></b><br>
    <?php echo htmlspecialchars($cert['entidade_certificadora']); ?>
  </p>
<?php } ?>

<h3>Cursos de Qualificação</h3>
<?php while ($curso = mysqli_fetch_assoc($res_cursos)) { ?>
  <p>
    <b><?php echo htmlspecialchars($curso['nome_curso']); ?></b><br>
    <?php echo htmlspecialchars($curso['instituicao']); ?> —
    <?php echo htmlspecialchars($curso['carga_horaria']); ?> horas
  </p>
<?php } ?>

  <hr>
  <br>
  <a href="editar_candidato.php?id=<?php echo $id; ?>" class='btn btn-warning'>Editar</a> |
  <a href="listar_candidatos.php" class='btn btn-primary'>Voltar à lista</a>      

  </div>


<!-- RODAPÉ -->
<footer>
    <!-- Utiliza o script abaixo para buscar o ano atual -->
    <p>&copy; <span id="anoAtual"></span> — SGC — PEAR Sistemas de Informação S.A.
  </br>
    Todos os direitos reservados.</p>

<script>
    //busca o ano atual com a função Date()
    document.getElementById("anoAtual").innerHTML = new Date().getFullYear();
</script>

</footer>

</body>
</html>