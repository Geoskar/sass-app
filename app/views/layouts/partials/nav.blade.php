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

<nav id="top-bar" class="collapse top-bar-collapse">

    <ul class="nav navbar-nav pull-right">
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="javascript:;">
                <i class="fa fa-user"></i>
                Rod Howard
                <span class="caret"></span>
            </a>

            <ul class="dropdown-menu" role="menu">
                <li>
                    <a href="./page-profile.html">
                        <i class="fa fa-user"></i>
                        &nbsp;&nbsp;My Profile
                    </a>
                </li>
                <li>
                    <a href="./page-calendar.html">
                        <i class="fa fa-calendar"></i>
                        &nbsp;&nbsp;My Calendar
                    </a>
                </li>
                <li>
                    <a href="./page-settings.html">
                        <i class="fa fa-cogs"></i>
                        &nbsp;&nbsp;Settings
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="./page-login.html">
                        <i class="fa fa-sign-out"></i>
                        &nbsp;&nbsp;Logout
                    </a>
                </li>
            </ul>
        </li>
    </ul>
</nav>
<!-- /#top-bar -->

<div id="sidebar-wrapper" class="collapse sidebar-collapse">

    <div id="search">
        <form>
            <input class="form-control input-sm" type="text" name="search" placeholder="Search..."/>
            <button type="submit" id="search-btn" class="btn"><i class="fa fa-search"></i></button>
        </form>
    </div>
    <!-- #search -->


    <nav id="sidebar">
        <ul id="main-nav" class="open-active">

            <li class="{{ Active::route('home') }}">
                <a href="{{ route('home') }}">
                    <i class="fa fa-tachometer"></i>
                    Dashboard
                </a>
            </li>

            <li class="{{ Active::route('users') }}">
                <a href="{{ route('users') }}">
                    <i class="fa fa-users"></i>
                    Users
                </a>
            </li>

            <li class="dropdown">
                <a href="">
                    <i class="fa fa-university"></i>
                    Academia
                    <span class="caret"></span>
                </a>

                <ul class="sub-nav">
                    <li>
                        <a href="./page-profile.html">
                            <i class="fa fa-book"></i>
                            Courses
                        </a>
                    </li>
                </ul>
            </li>

        </ul>
    </nav>
    <!-- /#sidebar -->
</div><!-- /#sidebar-wrapper -->