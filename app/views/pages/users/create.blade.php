@extends('layouts.default')

@section('content')
    <div id="content-header">
        <h1>Create User</h1>
    </div> <!-- #content-header -->

    <div id="content-container">

        <div class="row">

            <div class="col-md-12">

                <div class="portlet">

                    <div class="portlet-header">

                        <h3>
                            <i class="fa fa-table"></i>
                            Insert Data
                        </h3>

                    </div>
                    <!-- /.portlet-header -->

                    <div class="portlet-content">

                        {{ Form::open(['route' => 'create_user_path']) }}

                        <!-- First Name Form Input -->
                        <div class="form-group">
                            {{ Form::label('firstName', 'First Name:') }}
                            {{ Form::text('firstName', null, ['class' => 'form-control', 'placeholder' => 'Enter First Name']) }}
                        </div>

                        <!-- Last Name Form Input -->
                        <div class="form-group">
                            {{ Form::label('lastName', 'Last Name:') }}
                            {{ Form::text('lastName', null, ['class' => 'form-control', 'placeholder' => 'Enter Last Name']) }}
                        </div>

                        <!-- Email Form Input -->
                        <div class="form-group">
                            {{ Form::label('email', 'Email:') }}
                            {{ Form::text('email', null, ['class' => 'form-control', 'placeholder' => 'Enter Email']) }}
                        </div>

                        <!-- Account Type Form Select List -->
                        <div class="form-group">
                            {{ Form::label('type', 'Account Type:') }}
                            {{ Form::select('type',
                                ['admin' => 'Admin', 'secretary' => 'Secretary', 'tutor' => 'Tutor'],
                                null, ['class' => 'form-control']) }}
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

        </div> <!-- /.row -->

    </div>

@stop

@section('page-scripts')

@stop