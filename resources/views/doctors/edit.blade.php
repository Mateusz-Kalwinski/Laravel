@extends('template')
@section('title')
    @if(isset($title))
        - {{$title}}
    @endif
@endsection('title')
@section('content')
    <div class="container">
        <h2>Edycja lekarza lekarza</h2>
        <form action="{{action('DoctorController@editStore')}}" method="post" role="form">

            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <input type="hidden" name="id" value="{{ $doctor->id }}">

            <div class="form-group">
                <label for="name">Nazwisko i imię</label>
                <input type="text" class="form-control" name="name" value="{{$doctor->name}}"/>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" class="form-control" name="email" value="{{$doctor->email}}"/>
            </div>
            <div class="form-group">
                <label for="phone">Telefon</label>
                <input type="phone" class="form-control" name="phone" value="{{$doctor->phone}}"/>
            </div>
            <div class="form-group">
                <label for="address">Adres</label>
                <input type="text" class="form-control" name="address" value="{{$doctor->address}}"/>
            </div>
            <div class="form-group">
                <label for="pesel">PESEL</label>
                <input type="text" class="form-control" name="pesel" value="{{$doctor->pesel}}"/>
            </div>

            <div class="form-group">
                <label for="specialization">Specjalizcja</label>
                @foreach($specializations as $specialization)
                    @if($doctor->specializations->contains($specialization->id))
                        <input style="width: 2%;" type="checkbox" class="form-control" name="specializations[]" value="{{ $specialization->id }}" checked/>
                        <p>{{$specialization->name}}</p>
                    @else
                        <input style="width: 2%;" type="checkbox" class="form-control" name="specializations[]" value="{{ $specialization->id }}" />
                        <p>{{$specialization->name}}</p>
                    @endif
                @endforeach
                <div class="form-group">
                    <label for="status">Status</label>
                    <br>
                    @if($doctor->status == 'active')
                        Aktywny<input style="width: 2%;" type="radio" class="form-control" name="status" value="active" checked/>
                        Nieaktywny<input style="width: 2%;" type="radio" class="form-control" name="status" value="inactive"/>
                    @else
                        Aktywny<input style="width: 2%;" type="radio" class="form-control" name="status" value="active" />
                        Nieaktywny<input style="width: 2%;" type="radio" class="form-control" name="status" value="inactive" checked/>
                    @endif
                </div>
            </div>
            <input type="submit" value="Edytuj" class="btn btn-primary">
        </form>
    </div>
@endsection('content')