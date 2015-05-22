@extends('welcome0')

@section('content')
<div class="container">
<h2>Корзина</h2>
<table class="tab-products">
<tr>
<td><h4>Категория</h4></td>
<td><h4>Наименование</h4></td>
<td><h4>Изображение</h4></td>
<td><h4>Цена</h4></td>
<td><h4>Количество</h4></td>
<td><h4>Стоимость</h4></td>
<td><h4>Действие</h4></td>
</tr>
<tr>
<?php $summ=0 ?>
@foreach($arr as $one=>$key)
 <td><h4>{{$brr[$one]->category}}</h4></td>
 <td><h4>{{$brr[$one]->name}}</h4></td>
 <td><img src="{{asset($brr[$one]->url_picture)}}" class="tbl-image"/></td>
 <td><h4>{{$brr[$one]->price}}</h4></td>
 <td><h4>{{$key}}</h4></td>
 <td><h4>{{($brr[$one]->price*$key)}}</h4></td>
 <td><a href="{{asset('orders/delete/'.$brr[$one]->id)}}">Удалить</a></td>
 </tr>
<?php $summ=$summ+$brr[$one]->price*$key; ?>
@endforeach
</table>

<h2 style="color:red">Общая стоимость={{$summ}} руб.</h2>

<form action="{{asset('orders/zakaz/')}}" method="POST">
					<input type="hidden" name="_token" value="{{ csrf_token() }}">
					<p>телефон*</p><input class="form-control input-sm" type="text" name="phone" placeholder="Телефон"
pattern='[(]{1}[0-9]{2}[)]{1}[0-9]{3}-[0-9]{2}-[0-9]{2}' required>
					<p>* обязательный параметр</p>
					<button class="btn btn-success btn-margin" type="submit">Подтвердить</button>
					</form>


</div>
@endsection