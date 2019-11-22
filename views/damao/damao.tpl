<!DOCTYPE html>
<html>
<head>
    <title>爱播 - ibo</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="icon" href="/static/img/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
     <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
     <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->


    <!-- 引入 Bootstrap -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <!-- 引入 normalize.css -->




    <link rel="stylesheet" type="text/css" href="/static/css/style.css">



    <link rel="stylesheet" type="text/css" href="/static/css/damao.css">


    <link rel="stylesheet" href="/static/css/dropload.css">


</head>
<body onload="load()">


    <header>
        <div class="head">

            <div class="logo">
                <a href="/damao/damao">爱播</a>
            </div>

            <div class="search-box">
                <form name="formsearch" id="formsearch" action="/search.php" method="post" target="_blank" autocomplete="off">
                    <input type="text" id="keyword" name="searchword" class="search-input" value="搜索视频" onfocus="if(this.value=='搜索视频'){this.value='';}" onblur="if(this.value==''){this.value='搜索视频';};">
                    <input type="submit" id="searchbutton" class="search-button" value="搜索">
                </form>
            </div>

        </div>

        <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid"  style="width: 100%; max-width: 1000px;">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#navbar_menu">
                        <span class="sr-only">切换导航</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/damao/damao">爱播</a>
                </div>

                <div class="collapse navbar-collapse" id="navbar_menu">
                    <ul class="nav navbar-nav">
                        <li><a href="/damao/damao">首页</a></li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li><a href="/damao/damao">电影</a></li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li><a href="/damao/damao">电视剧</a></li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li><a href="/damao/live">直播</a></li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li><a href="/damao/damao">福利</a></li>
                    </ul>
                    <form class="navbar-form navbar-left navbar-right" role="search" action="/damao/damao" method="get">
                        <div class="form-group">
                            <input name="searchword" type="text" class="form-control" placeholder="搜索视频">
                        </div>
                        <button type="submit" class="btn btn-default">搜索</button>
                    </form>
                </div>


            </div>
        </nav>
    </header>


    <section class="main-container">
        <div class="row-five">
            <div class="box-title"><b>最新动漫：</b></div>
            <div class="box-body">

                {{range .List}}

                <div class="box-item">
                    <a class="item-link" href="{{ .url }}" target="_blank" title="{{ .name }}">
                        <img src="{{ .image }}" alt="{{ .name }}">
                        <button class="hdtag">更新至8集/共12集</button>
                    </a>
                    <div class="meta">
                        <div class="item-name"><a class="movie-name" target="_blank" title="{{ .name }}" href="{{ .url }}">{{ .name }}</a></div>
                        <em>添加时间：<strong><span>2019-03-08</span></strong></em>
                    </div>
                </div>

                {{end}}

            </div>
        </div>
        <div class="pagenav">
            <ul class="pagination">
            <li class="disabled"><a href="javascript:void(0);">当前第1/444页</a></li>

            <!-- 索引不为0，显示首页 -->
            <!-- 等于eq    不等于ne   -->
            {{if ne .Page -1}}
            <li><a target="_self" href="/damao/damao?page=1&limit=30&searchword={{ $.SearchWord }}" class="pagelink_a">首页</a></li>
            {{end}}


            <li><a target="_self" href="/damao/damao?page={{.PageFront}}&limit=30&searchword={{ $.SearchWord }}" class="pagelink_a">上一页</a></li>








            {{range $index, $elem := .PageSize}}
                {{if eq $.Page $elem}}
                    <li><span style="color:red;font-weight:bold;">{{ . }}</span></li>
                {{else}}
                    <li class="mbnone">
                        <a target="_self" class="pagelink_b" href="/damao/damao?page={{ . }}&limit=30&searchword={{ $.SearchWord }}">{{ . }}</a>
                    </li>
                {{end}}
            {{end}}




            <li><a target="_self" href="/damao/damao?page={{.PageNext}}&limit=30&searchword={{ $.SearchWord }}" class="pagelink_a">下一页</a></li>

            <li><a target="_self" href="" class="pagelink_a">尾页</a></li>
            </ul>
        </div>

    </section>



    {{template "components/footer.html" .}}

    







</body>


<!-- jQuery1.7以上 或者 Zepto 二选一，不要同时都引用 -->
<script src="/static/js/zepto.min.js"></script>
<script src="/static/js/dropload.min.js"></script>
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<!-- <script src="https://code.jquery.com/jquery.js"></script> -->

</html>