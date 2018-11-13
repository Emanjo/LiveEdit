<?php

use Illuminate\Database\Seeder;
use App\Documents;

class DocumentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

      Documents::truncate();

      //To make fake data
      $faker = \Faker\Factory::create();

        for ($i = 0; $i < 50; $i++) {
            Documents::create([
                'title' => $faker->sentence,
                'body' => $faker->paragraph,
            ]);
        }
        
    }
}
