<?php namespace App\Http\Controllers\Adminka;
use App\Http\Controllers\Controller;
use View;
use DB;
class MainController extends Controller{
    public function __construct(){
        parent::__construct();
        $this->middleware('admin');
        $this->styles[]='media/css/admin.css';
    }
    public function getIndex(){
        $products=DB::table('products')->get();

        return view('main')->with('products',$products);
    }

    public function getDelete($id=null){
        $products=DB::table('products')->where('id','=',$id)->delete();

        return redirect('adminka');
    }
}