@extends('welcome0')

@section('content')
<div class="container">
<div>
<h4>
Вы можете выбрать наиболее удобные для Вас способы доставки товара:</h4>

  <img src="{{asset('media/samovivoz.jpg')}}" class="dostavka">

            <h4 class="dostavka_text">САМОВЫВОЗ<br/>





Вы можете самостоятельно забрать свой заказ (не ранее чем через сутки после оформления заказа), предварительно связавшись с нами по тел: +375 29 123-456-7 (телефон только для самовывоза, получить консультацию и сделать заказ Вы можете по тел. (029) 765-432-1, (029) 123-123-1);

по адресу: г.Минск, ул.Чкалова, 67 - стационарного магазина по данному адресу нет, это адрес юридической регистрации.

Заказ расформировывается, если Вы не забрали его в течение 7 дней.</h4>
</div>

<div style="clear:both">
 <div>

    <img src="{{asset('media/dostavka_kurierom.jpg')}}" class="dostavka">

         <h4 class="dostavka_text">ДОСТАВКА КУРЬЕРОМ<br/>



Минимальная сумма заказа, при которой производится бесплатная доставка –

500 000 белорусских рублей.

При сумме заказа до 200 000 руб. стоимость доставки - 100 000 рублей,

при сумме заказа от 200 000 до 400 000 руб. стоимость доставки - 60 000 рублей,

при сумме заказа от 400.000 до 500.000 руб. стоимость доставки - 30 000 рублей.

Доставка заказов по г.Минску (в пределах МКАД) осуществляется 1-2 раза в неделю (дни развоза назначаются интернет-магазином, время развоза с 12-00 до 17-00). К сожалению, возможности индивидуально подстроиться под каждого клиента нет. В примечании к заказу указывайте точный адрес доставки и период времени, когда Вы будете находиться по данному адресу. Спасибо за понимание.</h4>

<div style="clear:both">

 <div>
 <img src="{{asset('media/cash.jpg')}}" class="dostavka">

<h4 class="dostavka_text">ОПЛАТА ТОВАРА:<br/>





Расчеты осуществляются в белорусских рублях во время получения Вашего заказа наличными деньгами при доставке курьером, либо самовывозе.</h4>




















</div>


</div>
@endsection