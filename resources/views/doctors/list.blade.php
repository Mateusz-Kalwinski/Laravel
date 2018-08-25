@extends('template')
@section('title')
    @if(isset($title))
        - {{$title}}
    @endif
@endsection('title')
@section('content')
<div class="container">
    <h2>Lekarze</h2>
    <a href="{{ URL::to('doctors/create') }}">Dodaj lekarza</a>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Nazwa</th>
            <th scope="col">Email</th>
            <th scope="col">Telefon</th>
            <th scope="col">Specializacja</th>
            <th scope="col">Status</th>
            <th scope="col">Operacje</th>
        </tr>
        </thead>
        <tbody>
        @foreach($doctorsList as $doctor)
        <tr>
            <th scope="row">{{$doctor->id}}</th>
            <td><a href="{{URL::to('doctors/' . $doctor->id)}}">{{$doctor->name}}</a></td>
            <td>{{$doctor->email}}</td>
            <td>{{$doctor->phone}}</td>
            <td>
                <ul>
                @foreach( $doctor->specializations as $specialization)
                    <li>{{$specialization->name}}</li>
                @endforeach
                </ul>
            </td>
            <td>{{$doctor->status}}</td>
            <td> <a href="{{ URL::to('doctors/delete/' . $doctor->id ) }}" onclick="return confirm('Czy napewno usunąć')">Usuń lekarza</a>
                 <br>
                 <a href="{{URL::to('doctors/edit/' . $doctor->id)}}">Edycja lekarza</a>
            </td>
        </tr>
        @endforeach
        </tbody>
    </table>

        @foreach($statistics as $statistic)
            @if($statistic->status == "active")
                <p>Liczba dostępnych lekarzy: {{$statistic->user_count}}</p>
            @endif

            @if($statistic->status == "inactive")
                <p>Liczba niedostępnych lekarzy: {{$statistic->user_count}}</p>
            @endif
        @endforeach

</div>
@endsection('content')