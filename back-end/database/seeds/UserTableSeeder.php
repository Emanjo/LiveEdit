<?php

use Illuminate\Database\Seeder;
use App\User;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      User::truncate();

      $password = Hash::make('123');

      User::create([
            'name' => 'Admin',
            'email' => 'admin@liveedit.com',
            'password' => $password
      ]);

      User::create([
            'name' => 'User',
            'email' => 'User@liveedit.com',
            'password' => $password
      ]);
    }
}
