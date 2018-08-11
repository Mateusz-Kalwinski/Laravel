@extends('template')
@section('title')
    @if(isset($title))
        - {{$title}}
    @endif
@endsection('title')
@section('content')
<table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Phone</th>
            <th scope="col">Address</th>
            <th scope="col">Status</th>
        </tr>
        </thead>
        <tbody>
        @foreach($doctorsList as $doctors)
        <tr>
            <th scope="row">{{$doctors->id}}</th>
            <td>{{$doctors->name}}</td>
            <td>{{$doctors->email}}</td>
            <td>{{$doctors->phone}}</td>
            <td>{{$doctors->address}}</td>
            <td>{{$doctors->status}}</td>
        </tr>
        @endforeach
        </tbody>
    </table>

@endsection('content')