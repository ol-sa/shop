<ul class="nav navbar-nav navbar-right">
					@if (Auth::guest())
						<div class="col-md-12">
<div class="panel panel-primary">
<div class="panel-heading">
<h3 class="panel-title">
Авторизация на сайте</h3>
</div>
<div class="panel-body">
<div class="row">

<div class="col-md-12">
<a href="/auth/login">Войти</a></li>
</div>
<div class="col-md-12 login-box">

<a href="/auth/register">Регистрация</a>

</div>
</div>
</div>
<div class="panel-footer">
<div class="row">
<div class="col-md-12">
<div class="checkbox">
</div>
</div>

</div>
</div>
</div>
</div>





						<!-----------------------
						<li><a href="/auth/login">Login</a></li>
						<li><a href="/auth/register">Register</a></li>--->
					@else
						<div class="col-md-12">
<div class="panel panel-primary">
<div class="panel-heading">
<h3 class="panel-title">
Авторизация на сайте</h3>
</div>
<div class="panel-body">
<div class="row">

<div class="col-md-12 login-box">

</div>
</div>
</div>
<div class="panel-footer">
<div class="row">

<div class="col-md-12">
<a href="/auth/logout">Выйти</a>
</div>
</div>
</div>
</div>
</div>




						<!--<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">{{ Auth::user()->name }} <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="/auth/logout">Logout</a></li>
							</ul>
						</li>-->
					@endif
				</ul>