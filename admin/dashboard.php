<?php
    session_start();
    if(!isset($_SESSION['usuario'])){
        header('location: index.php?erro_user=1');
    }

    $nivel_permissao = $_SESSION['nivel'];
    if($nivel_permissao != '2'){
        header('location: index.php?erro_not_permited=2');
    }

    require_once('../db.php');

    $linkobjdb = new db();
    $link = $linkobjdb->conexaoMysql();

    $id_usuario = $_SESSION['id_usuario'];
    $usuario = $_SESSION['usuario'];

    //puxar nome dp usuario
    $sql = "SELECT nome AS nomeusuario FROM up_usuarios WHERE id = $id_usuario";
    $resultado_id = mysqli_query($link, $sql);
    if($resultado_id){
        $registro = mysqli_fetch_array($resultado_id, MYSQLI_ASSOC);
        $nomeusuario = $registro['nomeusuario'];
    } else{
        echo 'Error ao tentar executar a query.';
    }
    mysqli_close($link);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>UperSchool - DashBoard</title>
    <script src="../bs/js/jquery-2.2.4.js"></script>
    <link rel="stylesheet" href="../bs/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bs/css/style.css">
    <script>
    $(document).ready(function(){

    });
    </script>
</head>
<body>
    <!-- Barra do menu -->
    <nav class="navbar navbar-default navbar-static-top corbarra">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand fonte1" href="dashboard.php">UperSchool</a>
                <!-- LOGO DO SITE <img src="imagens/logo.png" /> -->
            </div>
              
            <div id="navbar" class="navbar-collapse collapse fonte1">
                <ul class="nav navbar-nav navbar-left">
                    <!--<li><a href="#">lorem ipsun</a></li>-->
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="../logout.php">Fazer Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!--Fim menu de navegação-->
    <header>
        <div class="container"> <!--container 1-->
            <div class="row"> <!--row-->
                <div class="col-md-12">
                    <h1 id="titulo_d1">Bem Vindo, <?= $nomeusuario ?></h1>
                </div>
            </div><!--/row-->
        </div>  <!--fim container 1-->
    </header> <!--fim header-->

    <section id="meus_cursos">
        <div class="container">
            <div class="row">

                <div class="col-md-12">
                    <h2>Ferramentas Disponíveis</h2>
                    <div class="panel">
                    </div>
                </div>

                <div class="col-md-4" id="#">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h3><center>Código de Primeiro Acesso</center></h3>
                        </div>
                        <hr>
                        <div id="area_gerar_codigo" class="form-group">
                            <form method="post" action="gerar_codigo.php" id="gerar_codigo">
                                <button type="submit" class="btn btn-primary btn-group-justified" id="btn_marca_aula">Gerar Código</button>
                                <br>
                            </form>
                        </div>
                        <div class="panel-body">
                            <h3><center>Códigos de Acesso Disponíveis</center></h3>
                        </div>
                    
                        <div class="panel-body">
                            <?php
                            $linkobjdb = new db();
                            $link = $linkobjdb->conexaoMysql();

                            $sql = "SELECT codigo_acesso FROM up_codigos_usuarios";

                            $resultado_id = mysqli_query($link, $sql);

                            if($resultado_id){

                                while($registro = mysqli_fetch_array($resultado_id, MYSQLI_ASSOC)){
                                    echo '<p><h4> Código: '.$registro['codigo_acesso'].'<h4></p>';
                                }

                            } else{
                                echo 'Erro ao tentar consultar lista de planos disponiveis';
                            }
                            mysqli_close($link);
                            ?>
                        </div>
                    </div>
                </div>
                <div class="col-md-4" id="#">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h3><center>Cadastro de Professor</center></h3>
                        </div>
                        <hr>
                        <div id="area_cadastro_professor">
                            <form method="post" action="cadastrar_professor.php" id="cadatrar_professor">
                                Estado
                                <br>
                                <input class="form-control" type="text" name="estado" required>
                                <br>
                                Cidade
                                <br>
                                <input class="form-control" type="text" name="cidade" required>
                                <br>
                                Matéria que será lecionada
                                <br>
                                <select class="form-control" name="materia" id="materiaselect" required>
                                    <option value="null">Selecione a matéria</option>
                                    <option value="Geografia">Geografia</option>
                                    <option value="Fisica 1">Física 1</option>
                                    <option value="Fisica 2">Fisica 2</option>
                                    <option value="Historia">Hístoria</option>
                                    <option value="Literatura">Literatura</option>
                                    <option value="Matematica 1">Matematica 1</option>
                                    <option value="Matematica 2">Matematica 2</option>
                                    <option value="Portugues">Portugues</option>
                                    <option value="Ciencias">Ciencias</option>
                                    <option value="Ingles">Inglês</option>
                                    <option value="Quimica 1">Quimica 1</option>
                                    <option value="Quimica 2">Quimica 2</option>
                                    <option value="Biologia 1">Biologia 1</option>
                                    <option value="Biologia 2">Biologia 2</option>
                                </select>
                                <br>
                                Nome do Professor
                                <br>
                                <input class="form-control" type="text" name="nome_professor" required>
                                <br>
                                Outras matérias aplicaveis
                                <br>
                                <input class="form-control" type="text" name="materia_aplicaveis" required>
                                <br>
                                <button type="submit" class="btn btn-primary btn-group-justified" id="btn_cadastro_prof">Fazer Cadastro</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-4" id="#">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h3><center>Definir Plano</center></h3>
                        </div>
                        <hr>
                        <div id="#">
                            <form method="post" action="definir_plano.php" id="cadatrar_professor">
                                ID do usuario
                                <br>
                                <input class="form-control" type="text" name="id_usuario" required>
                                <br>
                                ID do plano
                                <br>
                                <input class="form-control" type="text" name="id_plano" required>
                                <br>
                                Data de Vencimento
                                <br>
                                <input class="form-control" type="date" name="validade_plano" required>
                                <br>
                                <button type="submit" class="btn btn-primary btn-group-justified" id="btn_cadastro_prof">Salvar</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    
    <!-- Rodapé -->
    <footer id="rodape">
        <hr>
            <div class="container"> <!-- Container -->
                <div class="row"> <!-- Row -->
                    <div class="col-lg-12">
                        <div class="row">                        
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <ul class="nav navbar-left rodape-h3">
                                    <li>
                                        <h3>Copyright &copy; <script language="JavaScript" type="text/javascript">document.write((new Date()).getFullYear());</script>  UperSchool</h3>
                                    </li>
                                </ul>
                                <ul class="nav navbar-right rodape-h3">
                                    <li>
                                        <h3>CNPJ: 000.000.000.000</h3>
                                    </li>
                                </ul>
                            </div>
                            <!-- //caso precisa de outros listas no rodapé
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <div class="rodape-h3-2">
                                    <h3>
                                        <a href="#">nome aqui</a>
                                    </h3>
                                </div>
                            </div>
                            -->    
                        </div>
                    </div>
    
                </div> <!-- Row -->
            </div> <!-- /Container -->
        </footer> <!-- /Rodapé -->

    <script src="../bs/js/bootstrap.min.js"></script>
</body>
</html>