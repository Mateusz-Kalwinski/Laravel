<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        factory('App\User', 10)->create();

        //specializations

        DB::table('specializations')->insert([
            'name'=>'oncology'
        ]);

        DB::table('specializations')->insert([
            'name'=>'surgeon'
        ]);

        DB::table('specializations')->insert([
            'name'=>'internist'
        ]);
    }
}
