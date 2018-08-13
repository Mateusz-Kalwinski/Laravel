<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class DoctorController extends Controller
{
    public function index(){

        $doctors = User::where('type', 'doctor')->orderBy('name','asc')->get();

        return view('doctors.list', ['doctorsList'=>$doctors,
                                          'footerYear'=>date('Y'),
                                          'title'=>'Moduł lekarzy'  ]);
    }

    public function show($id){

        $doctor =  User::find($id);

        return view('doctors.show', ['doctor'=>$doctor,
            'footerYear'=>date('Y'),
            'title'=>'Profil lekarza'  ]);
    }

    public function create(){

        User::create([
            'name' => 'Allan Johnson',
            'email' => 'allan@johnson.com',
            'password' => bcrypt('password'),
            'remember_token' => str_random(10),
            'phone' => '123123123',
            'address' => '27 Colmore Row, Birmingham, England, B3 2EW',
            'status' => 'active',
            'pesel' => '18293021',
            'type' => 'doctor'
        ]);

        return redirect('doctors');
    }

    public function edit($id){

        $doctor =  User::find($id);

        $doctor->name = "Johnson Allan";
        $doctor->save();

        return redirect('doctors');
    }
}
