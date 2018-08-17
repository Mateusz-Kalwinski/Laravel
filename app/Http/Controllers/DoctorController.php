<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Repositories\UserRepository;

class DoctorController extends Controller
{
    public function index(UserRepository $userRepo){

        $statistics = $userRepo->getDoctorsStatistics();

        $users = $userRepo->getAllDoctors();

        return view('doctors.list', ['doctorsList' => $users,
                                          'footerYear' => date('Y'),
                                          'title' => 'Moduł lekarzy',
                                          'statistics' => $statistics]);
    }

    public function show(UserRepository $userRepo, $id){

        $doctor =  $userRepo->find($id);

        return view('doctors.show', ['doctor'=>$doctor,
            'footerYear'=>date('Y'),
            'title'=>'Profil lekarza'  ]);
    }

    public function create(UserRepository $userRepo){

        $userRepo->create([
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

    public function edit(UserRepository $userRepo, $id){

        $doctor =  $userRepo->update(['name'=>'Allan Johnson'], $id);

        return redirect('doctors');
    }
}
