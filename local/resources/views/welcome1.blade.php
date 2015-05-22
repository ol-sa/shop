@extends('welcome0')

@section('content')
		<div class="container">
		  <div class="row">
		  <div class="col-md-3"><!--Левое меню-->
		  <ul id="nav" class="top_ul">
                  <li class="level_1 active">
                      <a href="/welcome">Пряжа</a>

                      <ul id="nav" class="featuresList">
                          <li class="level_2 ">
                              <a href="/detskaya">Детская</a>

                          </li>
                          <li class="level_2 ">
                              <a href="/fantasy">Фантазийная</a>

                          </li>
                          <li class="level_2 ">
                              <a href="/acryl">Акрил</a>

                          </li>
                          <li class="level_2 ">
                              <a href="/angora">Ангора и мохер</a>

                          </li>
                          <li class="level_2 ">
                              <a href="/viskoza">Вискоза</a>

                          </li>
                          <li class="level_2 ">
                              <a href="/lurex">Люрекс</a>

                          </li>
                          <li class="level_2 ">
                              <a href="/nylon">Нейлон</a>

                          </li>
                          <li class="level_2 ">
                              <a href="/paetki">Паетки</a>

                          </li>
                          <li class="level_2 ">
                              <a href="/polyamid">Полиамид</a>

                          </li>
                          <li class="level_2 ">
                              <a href="/polyester">Полиэстер</a>

                          </li>
                          <li class="level_2 ">
                              <a href="/hlopok">Хлопок</a>

                          </li>
                          <li class="level_2 ">
                              <a href="/wool">Шерсть и кашемир</a>

                          </li>
                          <li class="level_2 ">
                              <a href="/silka">Шёлк</a>

                          </li>
                      </ul>
                  </li>


              </ul>

<!--- вставляем блок авторизации ------------>



<!----конец блока авторизации --------------->


		  </div><!--Конец левого меню-->
		  <div class="col-md-9">

					<!-----------------------------------------------------------------object------------------------>
					<div class="row">

					@foreach($products as $product)
					<div class="col-md-3"><div class="product">
					<div class="images">
					<img src="{{asset($product->url_picture)}}" class="image">
					</div>
					<h4>{{$product->name}}</h4>
					<h5>Цена - {{$product->price}} руб.</h5>
					<form action="{{asset('orders/cart/'.$product->id)}}" method="POST">
					<input type="hidden" name="_token" value="{{ csrf_token() }}">
					<input class="form-control input-sm" type="text" name="kolvo" placeholder="Количество">
					<button class="btn btn-success btn-margin" type="submit">Добавить в корзину</button>
					</form>
					<h6>Вес - {{$product->ves}} г.</h6>
					<h6>Длина - {{$product->dlina}} м.</h6>
					<h6>Состав: {{$product->sostav}}</h6>
					<!---------------------------------------------------end of object------------------------------->
					</div></div>

					@endforeach
					<br style="clear:both">
					{!!$products->render()!!}
					<br />


					</div>

		  </div>
		</div>
		</div>

@endsection

