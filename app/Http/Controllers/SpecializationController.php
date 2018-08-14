<?php

namespace App\Http\Controllers;

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
}
