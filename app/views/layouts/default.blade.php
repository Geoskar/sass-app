<!doctype html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en"> <!--<![endif]-->

<head>
    <title>{{$title}} &middot; SASS App</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="">
    <meta name="author" content=""/>

    {{HTML::style('https://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,800italic,400,600,800')}}
    {{HTML::style('//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css')}}
    {{HTML::style('css/bootstrap.min.css')}}
    {{HTML::style('js/libs/css/ui-lightness/jquery-ui-1.9.2.custom.css')}}
    {{HTML::style('css/App.css')}}
    {{HTML::style('css/custom.css')}}
</head>

<body>

<div id="wrapper">

    @include('layouts.partials.header')

    @include('layouts.partials.top-bar')

    @include('layouts.partials.search')

    @include('layouts.partials.sidebar')

    <div id="content">
        @yield('content')
    </div>
    <!-- #content -->

</div>
<!-- #wrapper -->

@include('layouts.partials.footer')

{{ HTML::script('//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js') }}
{{ HTML::script('js/libs/jquery-ui-1.9.2.custom.min.js') }}
{{ HTML::script('js/libs/bootstrap.min.js') }}
{{ HTML::script('js/App.js') }}
</body>
</html>