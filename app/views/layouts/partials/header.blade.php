<header id="header">

    <h1 id="site-logo">
        <a href="{{ action('PagesController@home') }}">
            {{ HTML::image('img/logo.png', 'Logo') }}
        </a>
    </h1>

    <a href="javascript:;"
       data-toggle="collapse"
       data-target=".top-bar-collapse"
       id="top-bar-toggle"
       class="navbar-toggle collapsed">
        <i class="fa fa-cog"></i>
    </a>

    <a href="javascript:;"
       data-toggle="collapse"
       data-target=".sidebar-collapse"
       id="sidebar-toggle"
       class="navbar-toggle collapsed">
        <i class="fa fa-bars"></i>
    </a>

</header>
<!-- /#header -->