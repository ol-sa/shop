<?php namespace App\Http\Controllers;
use DB;
class OrdersController extends Controller {

    /*
    |--------------------------------------------------------------------------
    | Welcome Controller
    |--------------------------------------------------------------------------
    |
    | This controller renders the "marketing page" for the application and
    | is configured to only allow guests. Like most of the other sample
    | controllers, you are free to modify or remove it as you desire.
    |
    */

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('guest');
    }

    /**
     * Show the application welcome screen to the user.
     *
     * @return Response
     */
    public function getIndex()
    {
        /*print_r ($_COOKIE);*/
        $orders=DB::table('orders')->get();

        return view('orders')->with('orders',$orders);
    }
    public function postCart($id=null){
        $kolvo=$_POST['kolvo'];
        setcookie($id,$kolvo,time()+60*60*2,'/');
        return redirect('/');

    }
    public function getKorzina(){

        $arr=array();
        $brr = array();
        foreach($_COOKIE as $one=>$key){

            $key=(int)$key;
            if($key>0){

                $arr[$one]=$key;

                $tovar= \App\Product::find($one);
                $brr[$one] = $tovar;

            }
        }
        return view('korzina') ->with('arr',$arr)
            ->with('brr',$brr);


    }

    public function postZakaz(){


        foreach($_COOKIE as $one=>$key){

            $key=(int)$key;
            if($key>0){

                $arr[$one]=$key;
            }
        }
        $body = serialize($arr);
        DB::table('orders')->insert(array('body'=>$body));





        return redirect('/');
    }

    public function getDelete($id=null){

        setcookie($id,0,time()+60*60*2,'/');

        return redirect('/orders/korzina');
    }

}
