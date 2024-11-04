<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::create([
            "name" => "johan",
            "email" => "johan123@test.com",
            "password" => "johan123"
        ]);

        User::create([
            "name" => "Adit",
            "email" => "Adit@test.com",
            "password" => "Adit123"
        ]);
    }
}
