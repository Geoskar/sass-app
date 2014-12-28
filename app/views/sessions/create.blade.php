@extends('layouts.default')

@section('content')

<div class="row">

    <div class="col-md-7 col-sm-9 col-xs-12">
        @include('layouts.partials.errors')

        {{ Form::open(['route' => 'login_path']) }}

            <!-- Email Form Input -->
            <div class="form-group">
                {{ Form::label('email', 'Email:') }}
                {{ Form::email('email', null, ['class' => 'form-control', 'required' => 'required']) }}
            </div>

            <!-- Password Form Input -->
            <div class="form-group">
                {{ Form::label('password', 'Password:') }}
                {{ Form::password('password', ['class' => 'form-control', 'required' => 'required']) }}
            </div>

            <!--- Log In Form Input --->
            <div class="form-group">
                {{ Form::submit('Sign In', ['class' => 'btn btn-primary']) }}
            </div>

        {{ Form::close() }}

    </div><!-- ./col -->
</div><!-- /.row -->
@stop