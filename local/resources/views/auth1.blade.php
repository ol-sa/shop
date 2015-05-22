<div class="col-md-12">
<div class="panel panel-primary">
<div class="panel-heading">
<h3 class="panel-title">
Авторизация на сайте</h3>
</div>
<div class="panel-body">
<div class="row">

<div class="col-md-12 login-box">
<form role="form">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
<input type="text" class="form-control" placeholder="Имя пользователя" required autofocus />
</div>
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
<input type="password" class="form-control" placeholder="Ваш пароль" required />
</div>

У вас нет аккаунта? <a href="#">Регистрация</a>
print_r(Auth::user()->name;
</form>
</div>
</div>
</div>
<div class="panel-footer">
<div class="row">
<div class="col-md-12">
<div class="checkbox">
<label>
<input type="checkbox" value="Remember">
Запомнить меня
</label>
</div>
</div>
<div class="col-md-12">
<button type="button" class="btn btn-labeled btn-success">
<span class="btn-label"><i class="glyphicon glyphicon-ok"></i></span>Войти</button>
<!--<button type="button" class="btn btn-labeled btn-danger">
<span class="btn-label"><i class="glyphicon glyphicon-remove"></i></span>Выход</button>-->
</div>
</div>
</div>
</div>
</div>