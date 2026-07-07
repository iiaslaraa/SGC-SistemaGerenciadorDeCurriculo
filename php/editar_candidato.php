<?php
// editar_candidato.php — SGC
require_once 'conexao.php';

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
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>SGC — Editar Candidato</title>

<!--  CRIAR FOLHA DE ESTILO ESPECÍFICA -->
<!-- Vincula a folha de estilos externa -->
  <link rel="stylesheet" href="../assets/css/style.css">

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

<h1>Editar Candidato</h1>
<form action="atualizar_candidato.php" method="post">
  <input type="hidden" name="id" value="<?php echo $c['idCandidato']; ?>">
<input type="hidden" name="idEndereco" value="<?php echo $c['idEndereco']; ?>">

  <fieldset>
    <legend>Dados Pessoais</legend>
    <label>Nome:
      <input type="text" name="nome"
             value="<?php echo htmlspecialchars($c['nome']); ?>"
             required maxlength="100">
    </label><br>
    <label>Nome da Mãe:
      <input type="text" name="nomeMae"
         value="<?php echo htmlspecialchars($c['nomeMae']); ?>"
         required maxlength="100">
    </label><br>
    <label>E-mail:
      <input type="email" name="email"
             value="<?php echo htmlspecialchars($c['email']); ?>"
             required maxlength="100">
    </label><br>
    <label>Telefone:
      <input type="text" name="telefone"
             value="<?php echo htmlspecialchars($c['telefone']); ?>"
             maxlength="20">
    </label><br>
    <label>Data de nascimento:
      <input type="date" name="data_nascimento"
             value="<?php echo htmlspecialchars($c['data_nascimento']); ?>">
    </label>

    <label>LinkedIn:
      <input type="text" name="linkedin"
         value="<?php echo htmlspecialchars($c['linkedin']); ?>">
    </label><br>

    <label>Portfólio:
      <input type="text" name="portfolio"
            value="<?php echo htmlspecialchars($c['portfolio']); ?>">
    </label><br>
  </fieldset>
    
    <fieldset>
      <legend>Endereço</legend>

      <label>Logradouro:
        <input type="text" name="logradouro"
              value="<?php echo htmlspecialchars($c['logradouro']); ?>" required>
      </label><br>

      <label>Número:
        <input type="text" name="numero"
              value="<?php echo htmlspecialchars($c['numero']); ?>" required>
      </label><br>

      <label>Complemento:
        <input type="text" name="complemento"
              value="<?php echo htmlspecialchars($c['complemento']); ?>">
      </label><br>

      <label>Bairro:
        <input type="text" name="bairro"
              value="<?php echo htmlspecialchars($c['bairro']); ?>" required>
      </label><br>

      <label>Cidade:
        <input type="text" name="cidade"
              value="<?php echo htmlspecialchars($c['cidade']); ?>" required>
      </label><br>

      <label>Estado:
        <input type="text" name="estado"
              value="<?php echo htmlspecialchars($c['estado']); ?>" required>
      </label><br>

      <label>CEP:
        <input type="text" name="cep"
              value="<?php echo htmlspecialchars($c['cep']); ?>" required>
      </label><br>

      <label>País:
        <input type="text" name="pais"
              value="<?php echo htmlspecialchars($c['pais']); ?>" required>
      </label>
    </fieldset>

  <button type="submit" class='btn btn-success'>Salvar Alterações</button>
  <a href="curriculo.php?id=<?php echo $id; ?>" class='btn btn-danger'>Cancelar</a>
</form>

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