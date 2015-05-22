<?php namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesCommands;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use View;
abstract class Controller extends BaseController {

    use DispatchesCommands, ValidatesRequests;
    public $styles = array();
    public function __construct(){
        View::composer('main', function($view){
            $this->styles[] = 'media/css/app.css';
            $this->styles[] = 'media/css/style.css';
            $view->with('styles', $this->styles);
        });
    }
}
