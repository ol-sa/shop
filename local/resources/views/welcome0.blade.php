<html>
	<head>



	<link rel="stylesheet" href="{{asset('media/css/style_menu.css')}}" type="text/css" media="screen"/>
	<link rel="stylesheet" href="{{asset('media/css/app.css')}}" type="text/css" media="screen"/>
	<link rel="stylesheet" href="{{asset('media/css/style.css')}}" type="text/css" media="screen"/>
	<link rel="shortcut icon" href="{{asset('media/favicon.ico')}}"/>
	<title>Магазин пряжи</title>
	</head>
	<body>

		@include('header');
		<div class="container">
		  <div class="row"><!--навигация-->
			<div class="col-md-12">


					<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          </div>

    <!-- Collect the nav links, forms, and other content for toggling -->

	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="/">Главная</a></li>
        <li><a href="/dostavka">Доставка и оплата</a></li>
		<li><a href="/skidki">Скидки</a></li>
		<li><a href="/kontakty">Контакты</a></li>
        <li><a href="/bobinka">Правила работы с бобинной пряжей</a></li>
		<li><a href="/silk">Всё о шёлке</a></li>
		@if (Auth::guest())

		@else

          @if ((Auth::user()->isadmin)==2)

		  <li><a href="/adminka">Админка</a></li>
		  @endif
		@endif
      </ul>
	</div><!-- /.navbar-collapse -->






  </div><!-- /.container-fluid -->
</nav>

			</div>
		  </div>
		  </div>

		  @yield('content')

		  <div class="container">
		  <div class="row">
			<div class="col-md-12">
			<img src="{{asset('media/footer_1140.jpg')}}">
			</div>
		  </div>
		</div>

	<!-- Scripts -->
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
</body>
</html><!--конец блока навигации-->




