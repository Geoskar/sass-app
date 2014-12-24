@extends('layouts.default')

@section('content')

<div class="row">

    <div class="col-md-7 col-sm-9 col-xs-12">
        @include('layouts.partials.errors')

        <div class="portlet">

            <div class="portlet-content">

                {{ Form::open(['route' => 'create_user_path']) }}

                <!-- First Name Form Input -->
                <div class="form-group">
                    {{ Form::label('first_name', 'First Name:') }}
                    {{ Form::text('first_name', null, ['class' => 'form-control', 'placeholder' => 'Enter First Name']) }}
                </div>

                <!-- Last Name Form Input -->
                <div class="form-group">
                    {{ Form::label('last_name', 'Last Name:') }}
                    {{ Form::text('last_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Last Name']) }}
                </div>

                <!-- Email Form Input -->
                <div class="form-group">
                    {{ Form::label('email', 'Email:') }}
                    {{ Form::text('email', null, ['class' => 'form-control', 'placeholder' => 'Enter Email']) }}
                </div>

                <!-- Account Type Form Select List -->
                <div class="form-group">
                    {{ Form::label('user_type_id', 'Account Type:') }}
                    {{ Form::select('user_type_id', $user_options, null, ['class' => 'form-control']) }}
                </div>

                <!-- Create Submit Form Input -->
                <ul class="portlet-tools pull-right">
                    <li>
                        {{ Form::submit('Create', ['class' => 'btn btn-primary']) }}
                    </li>
                </ul>

                {{ Form::close () }}
            </div>
            <!-- /.portlet-content -->

        </div>
        <!-- /.portlet -->

    </div>
    <!-- /.col -->

</div>
<!-- /.row -->

@stop

@section('page-scripts')

@stop