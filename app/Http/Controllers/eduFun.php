<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Post;

class eduFun extends Controller
{
    public function home(){
        $data = Post::limit(2)->get();
        return view("home",["data"=>$data]);
    }

    public function category($option){
        if ($option == "multimedia"){
            $data = Post::where("category","interactive multimedia")->get();
            $title = "Interactive Multimedia";
            return view("category",["data" => $data,"title" => $title]);
        } else if ($option == "softeng"){
            $data = Post::where("category","software engineering")->get();
            $title = "Interactive Multimedia";
            return view("category",["data" => $data,"title" => $title]);
        }

        return view("home");
    }

    public function post($id){
        $id = (int)$id;
        $data = Post::where("id",$id)->get();

        return view("post",["data"=>$data]);
    }

    public function writers(){

        $data = Post::select("author","category")->groupby("author","category")->get();

        return view("writers",["data"=>$data]);
    }

    public function writerPost($writer){
        $data = Post::where("author",$writer)->get();

        return view("writerPost",["data" => $data]);
    }

    public function aboutUs(){
        return view("aboutus");
    }

    public function popular($page) {//pagination
        $page = (int) $page;
        $perPage = 3;
    
        $offset = ($page - 1) * $perPage;
    
        $data = Post::skip($offset)->take($perPage)->get();
    
        $totalRecords = Post::count();
    
        $totalPages = ceil($totalRecords / $perPage);
        
        return view("popular", [
            "data" => $data,
            "currentPage" => $page,
            "totalPages" => $totalPages,
        ]);
    }
    
}
