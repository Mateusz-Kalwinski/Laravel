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
}
