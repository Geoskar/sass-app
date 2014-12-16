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

            <li class="">
                <a href="./index.html">
                    <i class="fa fa-tachometer"></i>
                    {{ Route::currentRouteName() }}
                </a>
            </li>

            <li class="active">
                <a href="./index.html">
                    <i class="fa fa-users"></i>
                    Users
                </a>
            </li>

            <li class="dropdown">
                <a href="javascript:;">
                    <i class="fa fa-users"></i>
                    Users
                    <span class="caret"></span>
                </a>

                <ul class="sub-nav">
                    <li>
                        <a href="./page-profile.html">
                            <i class="fa fa-list"></i>
                            List
                        </a>
                    </li>
                    <li>
                        <a href="./page-invoice.html">
                            <i class="fa fa-plus-square-o"></i>
                            Add
                        </a>
                    </li>
                </ul>
            </li>

        </ul>
    </nav>
    <!-- /#sidebar -->
</div><!-- /#sidebar-wrapper -->