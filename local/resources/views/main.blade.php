@extends('welcome0')

@section('content')
<div class="container">
<table class="tab-products">
<tr>
<td>id</td>
<td>category</td>
<td>name</td>
<td>picture</td>
<td>price</td>
<td>ves</td>
<td>dlina</td>
<td>sostav</td>
<td>show_hide</td>
<td>Действия</td>
</tr>

@foreach ($products as $product)
<tr>
<td>{{$product->id}}</td>
<td>{{$product->category}}</td>
<td>{{$product->name}}</td>
<td><img src="{{$product->url_picture}}" class="tbl-image"></td>
<td>{{$product->price}}</td>
<td>{{$product->ves}}</td>
<td>{{$product->dlina}}</td>
<td>{{$product->sostav}}</td>
<td>{{$product->show_hide}}</td>
<td><a href="{{asset('adminka/edit/'.$product->id)}}">Edit</a></td>
</tr>
@endforeach
</table>
</div>
@endsection