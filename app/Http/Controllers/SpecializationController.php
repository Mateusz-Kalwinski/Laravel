<?php

namespace App\Http\Controllers;

use App\Models\Specialization;
use Illuminate\Http\Request;
use App\Repositories\SpecializationRepository;

class SpecializationController extends Controller
{
    public function index(SpecializationRepository $specializationRepo){

        $spacializatoins = $specializationRepo->getAll();

        return view('specializations.list', ['specializations'=>$spacializatoins,
                                                  'footerYear'=>date("Y"),
                                                  'title'=>'Moduł specjalizacji']);
    }

    public function create(){
        return view('specializations.create', ['footerYear'=>date("Y")]);
    }

    public function store(Request $request){
        $specialization = new Specialization;
        $specialization->name = $request->input('name');
        $specialization->save();

        return redirect()->action('SpecializationController@index');
    }
}
