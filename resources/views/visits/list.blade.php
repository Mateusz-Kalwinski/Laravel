@extends('template')
@section('title')
    @if(isset($title))
        - {{$title}}
    @endif
@endsection('title')
@section('content')
    <div class="container">
        <h2>Wizyty</h2>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Pacjent</th>
                <th scope="col">Doktor</th>
                <th scope="col">Data</th>
            </tr>
            </thead>
            <tbody>
            @foreach($visits as $visit)
                <tr>
                    <th scope="row">{{$visit->id}}</th>
                    <td>{{$visit->patient_id}}</td>
                    <td>{{$visit->doctor_id}}</td>
                    <td>{{$visit->date}}</td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
@endsection('content')