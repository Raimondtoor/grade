<?php session_start();?>

<!DOCTYPE html>
<html lang="pt">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link role="icon" href="view/img/favicon.ico">
        <link href="view/css/estilo.css" rel="stylesheet">
        <link href="view/css/bootstrap.css" rel="stylesheet">
        <link href="view/css/bootstrap-theme.css" rel="stylesheet">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Login</title>

        <!-- Bootstrap -->
        <link href="view/css/bootstrap.min.css" rel="stylesheet">
        <link href="view/css/bootstrap-theme.min.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->


    </head>

    <body>
        <div class="row">
            <form class="form-inline" method="POST" action="controller/UsuarioServlet.php">
                <div class="form-group">
                    <label class="sr-only" for="exampleInputEmail3">Email</label>
                    <input type="email" class="form-control" name="email" placeholder="Email">
                </div>
                <div class="form-group">
                    <label class="sr-only" for="exampleInputPassword3">Senha</label>
                    <input type="password" class="form-control" name="senha" placeholder="Password">
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> Lembrar dos dados
                    </label>
                </div>
                <button type="submit" class="btn btn-default">Sign in</button>
            </form>
        </div>

        <div id="cadastro">
            <button type="submit" class="btn btn-primary" onclick="cadastro();">Cadastre-se</button>
        </div>


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="view/js/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="view/js/bootstrap.min.js"></script>
        <script src="view/js/bootstrap.js"></script>
        <script src="view/js/funcoes.js"></script>
    </body>
</html>

