<!-- <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
        <link rel="stylesheet" type="text/css" href="static/css/bootstrap-clearmin.min.css">
        <link rel="stylesheet" type="text/css" href="static/css/roboto.css">
        <link rel="stylesheet" type="text/css" href="static/css/material-design.css">
        <link rel="stylesheet" type="text/css" href="static/css/small-n-flat.css">
        <link rel="stylesheet" type="text/css" href="static/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="static/css/summernote.css"> -->

{{template "components/header.tpl" .}}

        <title>发布</title>
        <style type="text/css">
        .cm-menu-items li a.sf-brick, li.cm-submenu, li a.sf-lock-open {
            display: none;
        }
        div.container-fluid .row, .panel {
            /*display: none;*/
        }
        </style>
    </head>
    <body class="cm-no-transition cm-1-navbar">
        <div id="cm-menu">
            <nav class="cm-navbar cm-navbar-primary">
                <div class="cm-flex"><a href="index.html" class="cm-logo"></a></div>
                <div class="btn btn-primary md-menu-white" data-toggle="cm-menu"></div>
            </nav>
            


{{template "components/left.tpl" .}}




        </div>
        <header id="cm-header">
            <nav class="cm-navbar cm-navbar-primary">
                <div class="btn btn-primary md-menu-white hidden-md hidden-lg" data-toggle="cm-menu"></div>
                <div class="cm-flex">
                    <h1>Summernote WYSIWYG Editor</h1>
                    <form id="cm-search" action="index.html" method="get">
                        <input type="search" name="q" autocomplete="off" placeholder="Search...">
                    </form>
                </div>
                <div class="pull-right">
                    <div id="cm-search-btn" class="btn btn-primary md-search-white" data-toggle="cm-search"></div>
                </div>
                <div class="dropdown pull-right">
                    <button class="btn btn-primary md-notifications-white" data-toggle="dropdown"> <span class="label label-danger">23</span> </button>
                    <div class="popover cm-popover bottom">
                        <div class="arrow"></div>
                        <div class="popover-content">
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading text-overflow">
                                        <i class="fa fa-fw fa-envelope"></i> Nunc volutpat aliquet magna.
                                    </h4>
                                    <p class="list-group-item-text text-overflow">Pellentesque tincidunt mollis scelerisque. Praesent vel blandit quam.</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading">
                                        <i class="fa fa-fw fa-envelope"></i> Aliquam orci lectus
                                    </h4>
                                    <p class="list-group-item-text">Donec quis arcu non risus sagittis</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading">
                                        <i class="fa fa-fw fa-warning"></i> Holy guacamole !
                                    </h4>
                                    <p class="list-group-item-text">Best check yo self, you're not looking too good.</p>
                                </a>
                            </div>
                            <div style="padding:10px"><a class="btn btn-success btn-block" href="#">Show me more...</a></div>
                        </div>
                    </div>
                </div>
                <div class="dropdown pull-right">
                    <button class="btn btn-primary md-account-circle-white" data-toggle="dropdown"></button>
                    <ul class="dropdown-menu">
                        <li class="disabled text-center">
                            <a style="cursor:default;"><strong>John Smith</strong></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-cog"></i> Settings</a>
                        </li>
                        <li>
                            <a href="login.html"><i class="fa fa-fw fa-sign-out"></i> Sign out</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div id="global">
            <div class="container-fluid">
                <div class="panel panel-default">
                    <div class="panel-heading">New article</div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label>Title</label>
                            <input type="text" class="form-control" placeholder="Enter title">
                        </div>
                        <label>Content</label>
                        <div id="summernote"></div>
                        <div class="form-group text-right" style="margin-top:20px">
                            <button type="submit" class="btn btn-default">Save Draft</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="cm-footer"><span class="pull-left">Connected as John Smith</span><span class="pull-right">&copy; PAOMEDIA SARL</span></footer>
        </div>
        <script src="static/js/lib/jquery-2.1.3.min.js"></script>
        <script src="static/js/jquery.mousewheel.min.js"></script>
        <script src="static/js/jquery.cookie.min.js"></script>
        <script src="static/js/fastclick.min.js"></script>
        <script src="static/js/bootstrap.min.js"></script>
        <script src="static/js/clearmin.min.js"></script>
        <script src="static/js/summernote.min.js"></script>
        <script src="static/js/demo/notepad.js"></script>
    </body>
</html>