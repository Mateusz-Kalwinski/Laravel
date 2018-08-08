<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DoctorController extends Controller
{
    public function index(){
        $doctorsList =  array(
            array("id"=>1, "lastName"=>"Newman", "firstName"=>"John", "email"=>"john@newman.com", "phone"=>"123123123", "address"=>"Adress 1", "status"=>"Dostępny"),
            array("id"=>2, "lastName"=>"Austin", "firstName"=>"Adam", "email"=>"adam@austin.com", "phone"=>"456456456", "address"=>"Adress 2", "status"=>"Dostępny"),
            array("id"=>3, "lastName"=>"Carrson", "firstName"=>"bob", "email"=>"bob@carrson.com", "phone"=>"789789789", "address"=>"Adress 3", "status"=>"Niedostępny"),
        );
        return view('doctors.list', ['doctorsList'=>$doctorsList]);
    }
}
