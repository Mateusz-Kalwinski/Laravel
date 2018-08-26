@extends('template')
@section('title')
    @if(isset($title))
        - {{$title}}
    @endif
@endsection('title')
@section('content')
    <div class="container">
        <h2 class="text-center">Zostałeś Zarejestrowany</h2>
        <p class="text-center">Dziękujemy!</p>
    </div>
@endsection('content')