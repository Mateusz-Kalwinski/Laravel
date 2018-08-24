<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Specialization;

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

    public function listBySpecializations(UserRepository $userRepo, $id){

        $statistics = $userRepo->getDoctorsStatistics();

        $users = $userRepo->getDoctorsBySpecialization($id);

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

    public function create(){

        $specializations = Specialization::all();

        return view('doctors.create', ['specializations'=>$specializations,
                                            'footerYear'=>date('Y'),]);
    }

    public function store(Request $request){

        $doctor = new User;

        $doctor->name = $request->input('name');
        $doctor->email = $request->input('email');
        $doctor->password= bcrypt($request->input('name'));
        $doctor->phone = $request->input('phone');
        $doctor->address = $request->input('address');
        $doctor->pesel = $request->input('pesel');
        $doctor->status = $request->input('status');
        $doctor->type = 'doctor';
        $doctor->save();

        $doctor->specializations()->sync($request->input('specializations'));

        return redirect()->action('DoctorController@index');
    }

    public function edit(UserRepository $userRepo, $id){

        $doctor =  $userRepo->update(['name'=>'Allan Johnson'], $id);

        return redirect('doctors');
    }
}
