<!DOCTYPE html>
<html>
<head>
    <title>爱播 - ibo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="icon" href="/static/img/favicon.ico" type="image/x-icon"/>
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
            <form name="formsearch" id="formsearch" action="/search.php" method="post" target="_blank"
                  autocomplete="off">
                <input type="text" id="keyword" name="searchword" class="search-input" value="搜索视频"
                       onfocus="if(this.value=='搜索视频'){this.value='';}"
                       onblur="if(this.value==''){this.value='搜索视频';};">
                <input type="submit" id="searchbutton" class="search-button" value="搜索">
            </form>
        </div>

    </div>

    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid" style="width: 100%; max-width: 1000px;">
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
                    <li><a href="/damao/damao">直播</a></li>
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
        <div class="box-title"><b>直播：</b></div>
        <div class="box-body">

        {{range .List}}

            <div class="box-item">
                <a class="item-link" href="{{ .url }}" target="_blank" title="{{ .name }}">
                    <img src="{{ .image }}" alt="{{ .name }}">
                    <button class="hdtag">更新至8集/共12集</button>
                </a>
                <div class="meta">
                    <div class="item-name"><a class="movie-name" target="_blank" title="{{ .name }}"
                                              href="{{ .url }}">{{ .name }}</a></div>
                    <em>添加时间：<strong><span>2019-03-08</span></strong></em>
                </div>
            </div>

        {{end}}

        </div>
    </div>


    <div class="">
        <div class="g-row">
            <div class="g-col">
                <div class="g-box">
                    <div class="pack_yk_pack" type="horizontal">
                        <div class="pack_pack_cover">
                            <a data-scm="20140719.rcmd.5040.native_http://v.laifeng.com/615" data-spm="d_1"
                               data-name="a_pos"
                               href="//v.laifeng.com/615?scm=20140719.rcmd.5040.native_http%3A%2F%2Fv.laifeng.com%2F615"
                               target="_blank" title="甜美主播天籁之音-现场直播" data-aplus-ae="262"
                               data-spm-anchor-id="a2ha1.12675304.m_5040_c_17104.d_1" data-aplus-clk="x764_3a3787ab">
                                <img src="https://image.laifeng.com/image/C97C501FEBAA42CCB297EAD2CE321F0B?x-oss-process=image/crop,x_0,y_114,w_857,h_482/resize,w_800,h_450">
                                <div class="pack_bg"></div>
                                <span class="pack_p_lt"></span>
                                <span class="pack_p_rt">
                                        <span class="pack_pack_tag pack_tag_red">直播</span>
                                    </span>
                                <span class="pack_p_rb">
                                        <span></span>
                                    </span>
                            </a>
                        </div>
                        <div class="pack_info_list">
                            <div class="pack_title  pack_short_title"><a
                                    data-scm="20140719.rcmd.5040.native_http://v.laifeng.com/615" data-spm="d_1"
                                    data-name=""
                                    href="//v.laifeng.com/615?scm=20140719.rcmd.5040.native_http%3A%2F%2Fv.laifeng.com%2F615"
                                    target="_blank" title="甜美主播天籁之音-现场直播"
                                    data-spm-anchor-id="a2ha1.12675304.m_5040_c_17104.d_1"
                                    data-aplus-clk="x765_3a3787ab">甜美主播天籁之音-现场直播</a></div>
                            <div class="pack_subtitle"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="g-col">
                <div class="g-box">
                    <div class="pack_yk_pack" type="horizontal">
                        <div class="pack_pack_cover"><a data-scm="20140719.rcmd.5040.native_http://v.laifeng.com/621310"
                                                        data-spm="d_2" data-name="a_pos"
                                                        href="//v.laifeng.com/621310?scm=20140719.rcmd.5040.native_http%3A%2F%2Fv.laifeng.com%2F621310"
                                                        target="_blank" title="这歌太勾人了，来听听呗"
                                                        data-spm-anchor-id="a2ha1.12675304.m_5040_c_17104.d_2"
                                                        data-aplus-ae="x263_2a98eb05"
                                                        data-aplus-clk="x766_681d11a6"><img
                                src="https://image.laifeng.com/image/A09C84D5B4EF4667989BAFF9C3568A8A?x-oss-process=image/crop,x_0,y_0,w_1200,h_675/resize,w_800,h_450">
                            <div class="pack_bg"></div>
                            <span class="pack_p_lt"></span><span class="pack_p_rt"><span
                                    class="pack_pack_tag pack_tag_red">直播</span></span><span
                                    class="pack_p_rb"><span></span></span></a></div>
                        <div class="pack_info_list">
                            <div class="pack_title  pack_short_title"><a
                                    data-scm="20140719.rcmd.5040.native_http://v.laifeng.com/621310" data-spm="d_2"
                                    data-name=""
                                    href="//v.laifeng.com/621310?scm=20140719.rcmd.5040.native_http%3A%2F%2Fv.laifeng.com%2F621310"
                                    target="_blank" title="这歌太勾人了，来听听呗"
                                    data-spm-anchor-id="a2ha1.12675304.m_5040_c_17104.d_2"
                                    data-aplus-clk="x767_681d11a6">这歌太勾人了，来听听呗</a></div>
                            <div class="pack_subtitle"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="g-col">
                <div class="g-box">
                    <div class="pack_yk_pack" type="horizontal">
                        <div class="pack_pack_cover"><a data-scm="20140719.rcmd.5040.native_http://v.laifeng.com/77370"
                                                        data-spm="d_3" data-name="a_pos"
                                                        href="//v.laifeng.com/77370?scm=20140719.rcmd.5040.native_http%3A%2F%2Fv.laifeng.com%2F77370"
                                                        target="_blank" title="麦子唱歌真的不一样不信你听听"
                                                        data-spm-anchor-id="a2ha1.12675304.m_5040_c_17104.d_3"
                                                        data-aplus-ae="264" data-aplus-clk="x768_209d6b7b"><img
                                src="https://image.laifeng.com/image/F06A6E6F4C9C4A938AC420CD7C464129?x-oss-process=image/crop,x_0,y_114,w_1513,h_851/resize,w_800,h_450">
                            <div class="pack_bg"></div>
                            <span class="pack_p_lt"></span><span class="pack_p_rt"><span
                                    class="pack_pack_tag pack_tag_red">直播</span></span><span
                                    class="pack_p_rb"><span></span></span></a></div>
                        <div class="pack_info_list">
                            <div class="pack_title  pack_short_title"><a
                                    data-scm="20140719.rcmd.5040.native_http://v.laifeng.com/77370" data-spm="d_3"
                                    data-name=""
                                    href="//v.laifeng.com/77370?scm=20140719.rcmd.5040.native_http%3A%2F%2Fv.laifeng.com%2F77370"
                                    target="_blank" title="麦子唱歌真的不一样不信你听听"
                                    data-spm-anchor-id="a2ha1.12675304.m_5040_c_17104.d_3"
                                    data-aplus-clk="x769_209d6b7b">麦子唱歌真的不一样不信你听听</a></div>
                            <div class="pack_subtitle"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="g-col">
                <div class="g-box">
                    <div class="pack_yk_pack" type="horizontal">
                        <div class="pack_pack_cover"><a data-scm="20140719.rcmd.5040.native_http://v.laifeng.com/68223"
                                                        data-spm="d_4" data-name="a_pos"
                                                        href="//v.laifeng.com/68223?scm=20140719.rcmd.5040.native_http%3A%2F%2Fv.laifeng.com%2F68223"
                                                        target="_blank" title="停电啦"
                                                        data-spm-anchor-id="a2ha1.12675304.m_5040_c_17104.d_4"
                                                        data-aplus-ae="265" data-aplus-clk="x770_623d9773"><img
                                src="https://image.laifeng.com/image/A73B68F67F074CA098FEAEB93107600A?x-oss-process=image/crop,x_0,y_19,w_800,h_449/resize,w_800,h_450">
                            <div class="pack_bg"></div>
                            <span class="pack_p_lt"></span><span class="pack_p_rt"><span
                                    class="pack_pack_tag pack_tag_red">直播</span></span><span
                                    class="pack_p_rb"><span></span></span></a></div>
                        <div class="pack_info_list">
                            <div class="pack_title  pack_short_title"><a
                                    data-scm="20140719.rcmd.5040.native_http://v.laifeng.com/68223" data-spm="d_4"
                                    data-name=""
                                    href="//v.laifeng.com/68223?scm=20140719.rcmd.5040.native_http%3A%2F%2Fv.laifeng.com%2F68223"
                                    target="_blank" title="停电啦" data-spm-anchor-id="a2ha1.12675304.m_5040_c_17104.d_4"
                                    data-aplus-clk="x771_623d9773">停电啦</a></div>
                            <div class="pack_subtitle"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="g-col  s-hide">
                <div class="g-box">
                    <div class="pack_yk_pack" type="horizontal">
                        <div class="pack_pack_cover"><a data-scm="20140719.rcmd.5040.native_http://v.laifeng.com/65101"
                                                        data-spm="d_5" data-name="a_pos"
                                                        href="//v.laifeng.com/65101?scm=20140719.rcmd.5040.native_http%3A%2F%2Fv.laifeng.com%2F65101"
                                                        target="_blank" title="才华横溢，颜值爆表，百变女神"
                                                        data-spm-anchor-id="a2ha1.12675304.m_5040_c_17104.d_5"
                                                        data-aplus-ae="266" data-aplus-clk="x772_d5e9144"><img
                                src="https://image.laifeng.com/image/89D559F3E78F4354AFE8800C7A95ED67?x-oss-process=image/crop,x_0,y_0,w_814,h_457/resize,w_800,h_450">
                            <div class="pack_bg"></div>
                            <span class="pack_p_lt"></span><span class="pack_p_rt"><span
                                    class="pack_pack_tag pack_tag_red">直播</span></span><span
                                    class="pack_p_rb"><span></span></span></a></div>
                        <div class="pack_info_list">
                            <div class="pack_title  pack_short_title"><a
                                    data-scm="20140719.rcmd.5040.native_http://v.laifeng.com/65101" data-spm="d_5"
                                    data-name=""
                                    href="//v.laifeng.com/65101?scm=20140719.rcmd.5040.native_http%3A%2F%2Fv.laifeng.com%2F65101"
                                    target="_blank" title="才华横溢，颜值爆表，百变女神"
                                    data-spm-anchor-id="a2ha1.12675304.m_5040_c_17104.d_5"
                                    data-aplus-clk="x773_d5e9144">才华横溢，颜值爆表，百变女神</a></div>
                            <div class="pack_subtitle"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="g-col  s-hide">
                <div class="g-box">
                    <div class="pack_yk_pack" type="horizontal">
                        <div class="pack_pack_cover"><a data-scm="20140719.rcmd.5040.native_http://v.laifeng.com/3704"
                                                        data-spm="d_6" data-name="a_pos"
                                                        href="//v.laifeng.com/3704?scm=20140719.rcmd.5040.native_http%3A%2F%2Fv.laifeng.com%2F3704"
                                                        target="_blank" title="睡了吗？亲爱的-现场直播"
                                                        data-spm-anchor-id="a2ha1.12675304.m_5040_c_17104.d_6"
                                                        data-aplus-ae="267" data-aplus-clk="x774_5bd74ed5"><img
                                src="https://image.laifeng.com/image/96DCB7796A22493F855BFE966D952154?x-oss-process=image/crop,x_0,y_41,w_1080,h_613/resize,w_800,h_450">
                            <div class="pack_bg"></div>
                            <span class="pack_p_lt"></span><span class="pack_p_rt"><span
                                    class="pack_pack_tag pack_tag_red">直播</span></span><span
                                    class="pack_p_rb"><span></span></span></a></div>
                        <div class="pack_info_list">
                            <div class="pack_title  pack_short_title"><a
                                    data-scm="20140719.rcmd.5040.native_http://v.laifeng.com/3704" data-spm="d_6"
                                    data-name=""
                                    href="//v.laifeng.com/3704?scm=20140719.rcmd.5040.native_http%3A%2F%2Fv.laifeng.com%2F3704"
                                    target="_blank" title="睡了吗？亲爱的-现场直播"
                                    data-spm-anchor-id="a2ha1.12675304.m_5040_c_17104.d_6"
                                    data-aplus-clk="x775_5bd74ed5">睡了吗？亲爱的-现场直播</a></div>
                            <div class="pack_subtitle"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="g-col m-hide">
                <div class="g-box">
                    <div class="pack_yk_pack" type="horizontal">
                        <div class="pack_pack_cover"><a data-scm="20140719.rcmd.5040.native_http://v.laifeng.com/8941"
                                                        data-spm="d_7" data-name="a_pos"
                                                        href="//v.laifeng.com/8941?scm=20140719.rcmd.5040.native_http%3A%2F%2Fv.laifeng.com%2F8941"
                                                        target="_blank" title="一个靠嘴吃饭的优秀主播"
                                                        data-spm-anchor-id="a2ha1.12675304.m_5040_c_17104.d_7"
                                                        data-aplus-ae="268" data-aplus-clk="x776_11c28d8c"><img
                                src="https://image.laifeng.com/image/5EF42D1508574B18B9594FD4A1ECCBED?x-oss-process=image/crop,x_0,y_90,w_1242,h_700/resize,w_800,h_450">
                            <div class="pack_bg"></div>
                            <span class="pack_p_lt"></span><span class="pack_p_rt"><span
                                    class="pack_pack_tag pack_tag_red">直播</span></span><span
                                    class="pack_p_rb"><span></span></span></a></div>
                        <div class="pack_info_list">
                            <div class="pack_title  pack_short_title"><a
                                    data-scm="20140719.rcmd.5040.native_http://v.laifeng.com/8941" data-spm="d_7"
                                    data-name=""
                                    href="//v.laifeng.com/8941?scm=20140719.rcmd.5040.native_http%3A%2F%2Fv.laifeng.com%2F8941"
                                    target="_blank" title="一个靠嘴吃饭的优秀主播"
                                    data-spm-anchor-id="a2ha1.12675304.m_5040_c_17104.d_7"
                                    data-aplus-clk="x777_11c28d8c">一个靠嘴吃饭的优秀主播</a></div>
                            <div class="pack_subtitle"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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