<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Post;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Post::create([
            "title" => "Title 1",
            "category" => "interactive multimedia",
            "user_id" => 1,
            "date" => now(),
            "image" => "images/multimedia.jpeg"
        ]);

        Post::create([
            "title" => "Title 2",
            "category" => "Softend",
            "user_id" => 2,
            "date" => now(),
            "image" => "images/softeng.jpeg"
        ]);
    }
}
