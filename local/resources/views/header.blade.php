<div class="container">
		  <div class="row">
			<div class="col-md-10">
			<a href="{{asset('/')}}"><img src="{{asset('media/header_1140.jpg')}}"></a>
			</div>
			<div class="col-md-2">

				    @if (Auth::guest())
					<ul class="pager">
    <li><a href="/auth/login">Вход</a></li>
    <li><a href="/auth/register">Регистрация</a></li>
    </ul>
	@else
	<ul class="pager">
    <li><a href="/auth/logout">Выйти</a></li>
	</ul>
	@endif
	<ul class="pager">
	<li><a href="/orders/korzina">
	<img src="{{asset('media/korzinka.png')}}">   Корзина
	</a></li>
	</ul>




		</div>
		</div>
</div>