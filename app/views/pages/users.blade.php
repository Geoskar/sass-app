@extends('layouts.default')

@section('content')
    <div id="content-header">
        <h1>Users</h1>
    </div> <!-- #content-header -->

    <div id="content-container">

        <div class="row">

            <div class="col-md-12">

                <div class="portlet">

                    <div class="portlet-header">

                        <h3>
                            <i class="fa fa-table"></i>
                            Kitchen Sink
                        </h3>

                    </div>
                    <!-- /.portlet-header -->

                    <div class="portlet-content">

                        <div class="table-responsive">

                            <table
                                    class="table table-striped table-bordered table-hover table-highlight table-checkable"
                                    data-provide="datatable"
                                    data-display-rows="10"
                                    data-info="true"
                                    data-search="true"
                                    data-length-change="true"
                                    data-paginate="true"
                                    >
                                <thead>
                                <tr>
                                    <th class="checkbox-column">
                                        <input type="checkbox" class="icheck-input">
                                    </th>
                                    <th data-filterable="true" data-sortable="true" data-direction="desc">Rendering engine</th>
                                    <th data-direction="asc" data-filterable="true" data-sortable="true">Browser</th>
                                    <th data-filterable="true" data-sortable="true">Platform(s)</th>
                                    <th data-filterable="false" class="hidden-xs hidden-sm">Engine version</th>
                                    <th data-filterable="true" class="hidden-xs hidden-sm">CSS grade</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="icheck-input">
                                    </td>
                                    <td>Trident</td>
                                    <td>Internet
                                        Explorer 5.0
                                    </td>
                                    <td>Win 95+</td>
                                    <td class="hidden-xs hidden-sm">5</td>
                                    <td class="hidden-xs hidden-sm">C</td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="icheck-input">
                                    </td>
                                    <td>Trident</td>
                                    <td>Internet
                                        Explorer 5.5
                                    </td>
                                    <td>Win 95+</td>
                                    <td class="hidden-xs hidden-sm">5.5</td>
                                    <td class="hidden-xs hidden-sm">A</td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="icheck-input">
                                    </td>
                                    <td>Trident</td>
                                    <td>Internet
                                        Explorer 6
                                    </td>
                                    <td>Win 98+</td>
                                    <td class="hidden-xs hidden-sm">6</td>
                                    <td class="hidden-xs hidden-sm">A</td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="icheck-input">
                                    </td>
                                    <td>Trident</td>
                                    <td>Internet Explorer 7</td>
                                    <td>Win XP SP2+</td>
                                    <td class="hidden-xs hidden-sm">7</td>
                                    <td class="hidden-xs hidden-sm">A</td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="icheck-input">
                                    </td>
                                    <td>Trident</td>
                                    <td>AOL browser (AOL desktop)</td>
                                    <td>Win XP</td>
                                    <td class="hidden-xs hidden-sm">6</td>
                                    <td class="hidden-xs hidden-sm">A</td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="icheck-input">
                                    </td>
                                    <td>Gecko</td>
                                    <td>Firefox 3.0</td>
                                    <td>Win 2k+ / OSX.3+</td>
                                    <td class="hidden-xs hidden-sm">1.9</td>
                                    <td class="hidden-xs hidden-sm">A</td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="icheck-input">
                                    </td>
                                    <td>Gecko</td>
                                    <td>Camino 1.0</td>
                                    <td>OSX.2+</td>
                                    <td class="hidden-xs hidden-sm">1.8</td>
                                    <td class="hidden-xs hidden-sm">A</td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="icheck-input">
                                    </td>
                                    <td>Gecko</td>
                                    <td>Camino 1.5</td>
                                    <td>OSX.3+</td>
                                    <td class="hidden-xs hidden-sm">1.8</td>
                                    <td class="hidden-xs hidden-sm">A</td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="icheck-input">
                                    </td>
                                    <td>Gecko</td>
                                    <td>Netscape 7.2</td>
                                    <td>Win 95+ / Mac OS 8.6-9.2</td>
                                    <td class="hidden-xs hidden-sm">1.7</td>
                                    <td class="hidden-xs hidden-sm">A</td>
                                </tr>

                                <tr class="">
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="icheck-input">
                                    </td>
                                    <td>Webkit</td>
                                    <td>Safari 3.0</td>
                                    <td>OSX.4+</td>
                                    <td class="hidden-xs hidden-sm">522.1</td>
                                    <td class="hidden-xs hidden-sm">A</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->


                    </div>
                    <!-- /.portlet-content -->

                </div>
                <!-- /.portlet -->

            </div>
            <!-- /.col -->

        </div> <!-- /.row -->

    </div>
@stop