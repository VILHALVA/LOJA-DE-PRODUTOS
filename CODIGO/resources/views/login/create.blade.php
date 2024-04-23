@if($errors->any())
    @foreach($errors->all() as $error)
    <div class="card red">
        <div class="card-content white-text">
            <span class="card-title">ERRO!</span>
            {{ $error }} <br>
        </div>
    </div>
    @endforeach
@endif

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CADASTRO</title>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body class="blue-grey darken-4 white-text">
<div class="container">
    <div class="row">
        <div class="col s12 m6 offset-m3">
            <div class="card blue-grey darken-3">
                <div class="card-content white-text">
                    <span class="card-title">CADASTRO</span>
                    <form action="{{ route('users.store') }}" method="post">
                        @csrf
                        <div class="input-field">
                            <input id="nome" type="text" name="firstName" class="validate white-text">
                            <label for="nome" class="white-text">NOME</label>
                        </div>
                        <div class="input-field">
                            <input id="sobrenome" type="text" name="lastName" class="validate white-text">
                            <label for="sobrenome" class="white-text">SOBRENOME</label>
                        </div>
                        <div class="input-field">
                            <input id="email" type="email" name="email" class="validate white-text">
                            <label for="email" class="white-text">EMAIL</label>
                        </div>
                        <div class="input-field">
                            <input id="password" type="password" name="password" class="validate white-text">
                            <label for="password" class="white-text">SENHA</label>
                        </div>
                        <button type="submit" class="btn waves-effect waves-light">CADASTRAR</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>