<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

class eduFun extends Controller
{
    public function home(){
        return view("home");
    }

    public function category($option){
        if ($option == "multimedia"){
            return view("category",["title" => "Interactive Multimedia"]);
        } else if ($option == "softeng"){
            return view("category",["title" => "Software Engineering"]);
        }

        return view("home");
    }

    public function writers(){
        return view("writers");
    }

    public function writerPost(){
        return view("writerPost");
    }

    public function aboutUs(){
        return view("aboutus");
    }
}
