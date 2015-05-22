@extends('welcome0')

@section('content')
<table class="tab-orders">
<tr>
<td>id</td>
<td>user_id</td>
<td>category</td>
<td>name</td>
<td>price</td>
<td>kol-vo</td>
<td>vsego</td>
<td>created_at</td>
<td>updated_at</td>
<td>phone</td>
<td>status</td>
</tr>

@foreach ($orders as $order)
<tr>
<td>{{$order->id}}</td>
<td>{{$order->user_id}}</td>
<td>{{$order->category}}</td>
<td>{{$order->name}}</td>
<td>{{$order->price}}</td>
<td>{{$order->kolich}}</td>
<td>{{$order->vsego}}</td>
<td>{{$order->created_at}}</td>
<td>{{$order->updated_at}}</td>
<td>{{$order->phone}}</td>
<td>{{$order->status}}</td>
</tr>
@endforeach
</table>
@endsection
