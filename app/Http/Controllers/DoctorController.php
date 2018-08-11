<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class DoctorController extends Controller
{
    public function index(){

        $users = User::where('type', 'doctor')->orderBy('name','asc')->get();

        return view('doctors.list', ['doctorsList'=>$users,
                                          'footerYear'=>date('Y'),
                                          'title'=>'Moduł lekarzy'  ]);
    }
}
