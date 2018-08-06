<?php

use Illuminate\Database\Seeder;

class mahasiswaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        
        $faker=Faker\Factory::create();
        $limit=5;
        for($i=0; $i<$limit; $i++){
            DB::table('mmahasiswas')->insert([
                'nim'=>$faker->text,
                'nama' => $faker->name,
                'jk'=>$faker->text,
                'email'=>$faker->unique()->email,
                'nohp'=>$faker->phoneNumber,
                'alamat'=>$faker->address,
            ]);
        }
    }
}

