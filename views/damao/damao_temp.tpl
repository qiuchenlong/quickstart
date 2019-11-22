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


    <link rel="stylesheet" type="text/css" href="/static/css/style.css">



    <link rel="stylesheet" type="text/css" href="/static/css/damao.css">


    <link rel="stylesheet" href="/static/css/dropload.css">

    <script src="/static/ckplayer/ckplayer.js"></script>

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
	
	<!-- <div class="main"> -->
        

        <section class="main-container">
            <div class="cascade">
                <ul>
                    <li class="casl-l">按分类：</li>
                    <li class="casl-r">


                    {{range $index, $elem := .Types}}
                    <a
                     {{if eq $.Type $elem.type}}
                     class="active"
                     {{end}}
                     href="/damao/damao?page=1&limit=30&type={{$elem.type}}&searchword={{ $.SearchWord }}">{{$elem.name}}</a>
                    {{end}}
                    

                    <!-- <a href="/y/dianshiju.html">电视剧</a> -->
                    
                    <!-- <a class="active" href="/y/dongman.html">动漫</a> -->
                    
                    </li>
                </ul>
                <ul>
                    <li class="casl-l">按剧情：</li>
                    <li class="casl-r">
                    <!-- <a href="/search.php?searchtype=5&amp;tid=4&amp;jq=%E8%B0%8D%E6%88%98">谍战</a> -->
                    

                    {{range $index, $elem := .Categorys}}
                    <a
                     {{if eq $.Category $elem.category}}
                     class="active"
                     {{end}}
                     href="/damao/damao?page=1&limit=30&category={{$elem.category}}&searchword={{ $.SearchWord }}">{{$elem.name}}</a>
                    {{end}}

                    </li>
                    
                </ul>
                <ul style="display: none;">
                    <li class="casl-l">按地区：</li>
                    <li class="casl-r">
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;area=%E5%A4%A7%E9%99%86">大陆</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;area=%E9%A6%99%E6%B8%AF">香港</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;area=%E5%8F%B0%E6%B9%BE">台湾</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;area=%E6%97%A5%E6%9C%AC">日本</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;area=%E9%9F%A9%E5%9B%BD">韩国</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;area=%E6%AC%A7%E7%BE%8E">欧美</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;area=%E6%B3%B0%E5%9B%BD">泰国</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;area=%E5%85%B6%E4%BB%96">其他</a>
                    </li>   
                </ul>
                <ul style="display: none;">
                    <li class="casl-l">按年份：</li>
                    <li class="casl-r">
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;year=2018">2018</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;year=2017">2017</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;year=2016">2016</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;year=2015">2015</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;year=2014">2014</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;year=2013">2013</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;year=2012">2012</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;year=2011">2011</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;year=2010">2010</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;year=2009">2009</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;year=2008">2008</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;year=2007">2007</a>
                    
                    <a href="/search.php?searchtype=5&amp;tid=4&amp;year=more">更早</a>
                    </li>
                </ul>       
            </div>

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

                     
                    {{/*<div class="box-item">*/}}
                        {{/*<a class="item-link" href="/m/huajianghuzhibuliangrendi3ji.html" target="_blank" title="画江湖之不良人第3季">*/}}
                            {{/*<img src="/uploads/allimg/181214/852711a864b79275.jpg" alt="画江湖之不良人第3季">*/}}
                            {{/*<button class="hdtag">更新至21集/共40集</button>*/}}
                        {{/*</a>*/}}
                        {{/*<div class="meta">*/}}
                            {{/*<div class="item-name"><a class="movie-name" target="_blank" title="画江湖之不良人第3季" href="/m/huajianghuzhibuliangrendi3ji.html">画江湖之不良人第3季</a></div>*/}}
                            {{/*<em>添加时间：<strong><span>2019-03-08</span></strong></em>*/}}
                        {{/*</div>*/}}
                    {{/*</div>*/}}
                     {{/**/}}
                    {{/*<div class="box-item">*/}}
                        {{/*<a class="item-link" href="/m/shanheshejitu.html" target="_blank" title="山河社稷图">*/}}
                            {{/*<img src="/uploads/allimg/181028/12794bd7926f8b50.jpg" alt="山河社稷图">*/}}
                            {{/*<button class="hdtag">更新至19集/共20集</button>*/}}
                        {{/*</a>*/}}
                        {{/*<div class="meta">*/}}
                            {{/*<div class="item-name"><a class="movie-name" target="_blank" title="山河社稷图" href="/m/shanheshejitu.html">山河社稷图</a></div>*/}}
                            {{/*<em>添加时间：<strong><span>2019-03-08</span></strong></em>*/}}
                        {{/*</div>*/}}
                    {{/*</div>*/}}
                     {{/**/}}
                    {{/*<div class="box-item">*/}}
                        {{/*<a class="item-link" href="/m/dunzhiyongzhechengminglu.html" target="_blank" title="盾之勇者成名录">*/}}
                            {{/*<img src="/uploads/allimg/190103/40822439b3c549f1.jpg" alt="盾之勇者成名录">*/}}
                            {{/*<button class="hdtag">更新至9集/共25集</button>*/}}
                        {{/*</a>*/}}
                        {{/*<div class="meta">*/}}
                            {{/*<div class="item-name"><a class="movie-name" target="_blank" title="盾之勇者成名录" href="/m/dunzhiyongzhechengminglu.html">盾之勇者成名录</a></div>*/}}
                            {{/*<em>添加时间：<strong><span>2019-03-08</span></strong></em>*/}}
                        {{/*</div>*/}}
                    {{/*</div>*/}}
                     {{/**/}}
                    {{/*<div class="box-item">*/}}
                        {{/*<a class="item-link" href="/m/mingzhidongjinglianga.html" target="_blank" title="明治东京恋伽">*/}}
                            {{/*<img src="/uploads/allimg/190102/0633236e26b37753.jpg" alt="明治东京恋伽">*/}}
                            {{/*<button class="hdtag">更新至9集</button>*/}}
                        {{/*</a>*/}}
                        {{/*<div class="meta">*/}}
                            {{/*<div class="item-name"><a class="movie-name" target="_blank" title="明治东京恋伽" href="/m/mingzhidongjinglianga.html">明治东京恋伽</a></div>*/}}
                            {{/*<em>添加时间：<strong><span>2019-03-08</span></strong></em>*/}}
                        {{/*</div>*/}}
                    {{/*</div>*/}}
                     {{/**/}}
                    {{/*<div class="box-item">*/}}
                        {{/*<a class="item-link" href="/m/xueyinglingzhu.html" target="_blank" title="雪鹰领主">*/}}
                            {{/*<img src="/uploads/allimg/181221/f0efd68b51927e9d.jpg" alt="雪鹰领主">*/}}
                            {{/*<button class="hdtag">更新至13集/共24集</button>*/}}
                        {{/*</a>*/}}
                        {{/*<div class="meta">*/}}
                            {{/*<div class="item-name"><a class="movie-name" target="_blank" title="雪鹰领主" href="/m/xueyinglingzhu.html">雪鹰领主</a></div>*/}}
                            {{/*<em>添加时间：<strong><span>2019-03-08</span></strong></em>*/}}
                        {{/*</div>*/}}
                    {{/*</div>*/}}
                     {{/**/}}
                    {{/*<div class="box-item">*/}}
                        {{/*<a class="item-link" href="/m/zuqiuxiaojiang_xinzuqiuxiaojiang.html" target="_blank" title="足球小将/新足球小将">*/}}
                            {{/*<img src="/uploads/allimg/181214/9bf32fe673732562.jpg" alt="足球小将/新足球小将">*/}}
                            {{/*<button class="hdtag">更新至48集/共52集</button>*/}}
                        {{/*</a>*/}}
                        {{/*<div class="meta">*/}}
                            {{/*<div class="item-name"><a class="movie-name" target="_blank" title="足球小将/新足球小将" href="/m/zuqiuxiaojiang_xinzuqiuxiaojiang.html">足球小将/新足球小将</a></div>*/}}
                            {{/*<em>添加时间：<strong><span>2019-03-08</span></strong></em>*/}}
                        {{/*</div>*/}}
                    {{/*</div>*/}}
                     {{/**/}}
                    {{/*<div class="box-item">*/}}
                        {{/*<a class="item-link" href="/m/shaoniantaitanchujidiwuji.html" target="_blank" title="少年泰坦出击第五季">*/}}
                            {{/*<img src="/uploads/allimg/180706/2477bba76e53a2e3.jpg" alt="少年泰坦出击第五季">*/}}
                            {{/*<button class="hdtag">更新至23集</button>*/}}
                        {{/*</a>*/}}
                        {{/*<div class="meta">*/}}
                            {{/*<div class="item-name"><a class="movie-name" target="_blank" title="少年泰坦出击第五季" href="/m/shaoniantaitanchujidiwuji.html">少年泰坦出击第五季</a></div>*/}}
                            {{/*<em>添加时间：<strong><span>2019-03-08</span></strong></em>*/}}
                        {{/*</div>*/}}
                    {{/*</div>*/}}
                     {{/**/}}
                    {{/*<div class="box-item">*/}}
                        {{/*<a class="item-link" href="/m/xunixiaojiezaikanzhuoni.html" target="_blank" title="虚拟小姐在看着你">*/}}
                            {{/*<img src="/uploads/allimg/190112/1cd75c64ac02b111.jpg" alt="虚拟小姐在看着你">*/}}
                            {{/*<button class="hdtag">第07集</button>*/}}
                        {{/*</a>*/}}
                        {{/*<div class="meta">*/}}
                            {{/*<div class="item-name"><a class="movie-name" target="_blank" title="虚拟小姐在看着你" href="/m/xunixiaojiezaikanzhuoni.html">虚拟小姐在看着你</a></div>*/}}
                            {{/*<em>添加时间：<strong><span>2019-03-08</span></strong></em>*/}}
                        {{/*</div>*/}}
                    {{/*</div>*/}}
                     {{/**/}}
                    {{/*<div class="box-item">*/}}
                        {{/*<a class="item-link" href="/m/xiongbinglian2zhutianjianglin.html" target="_blank" title="雄兵连2诸天降临">*/}}
                            {{/*<img src="/uploads/allimg/190127/8bacce16cf88baf9.jpg" alt="雄兵连2诸天降临">*/}}
                            {{/*<button class="hdtag">第08集</button>*/}}
                        {{/*</a>*/}}
                        {{/*<div class="meta">*/}}
                            {{/*<div class="item-name"><a class="movie-name" target="_blank" title="雄兵连2诸天降临" href="/m/xiongbinglian2zhutianjianglin.html">雄兵连2诸天降临</a></div>*/}}
                            {{/*<em>添加时间：<strong><span>2019-03-08</span></strong></em>*/}}
                        {{/*</div>*/}}
                    {{/*</div>*/}}
                     {{/**/}}
                    {{/*<div class="box-item">*/}}
                        {{/*<a class="item-link" href="/m/huajianghuzhibuliangrendisanji.html" target="_blank" title="画江湖之不良人第三季">*/}}
                            {{/*<img src="/uploads/allimg/181028/eb9fdc4f9373a601.jpg" alt="画江湖之不良人第三季">*/}}
                            {{/*<button class="hdtag">第21集</button>*/}}
                        {{/*</a>*/}}
                        {{/*<div class="meta">*/}}
                            {{/*<div class="item-name"><a class="movie-name" target="_blank" title="画江湖之不良人第三季" href="/m/huajianghuzhibuliangrendisanji.html">画江湖之不良人第三季</a></div>*/}}
                            {{/*<em>添加时间：<strong><span>2019-03-08</span></strong></em>*/}}
                        {{/*</div>*/}}
                    {{/*</div>*/}}
                     {{/**/}}
                    {{/*<div class="box-item">*/}}
                        {{/*<a class="item-link" href="/m/xinzhuanzuyiwenlutiejuchangban.html" target="_blank" title="新撰组异闻录~铁~剧场版">*/}}
                            {{/*<img src="/uploads/allimg/181025/53afb92bf0d5608a.jpg" alt="新撰组异闻录~铁~剧场版">*/}}
                            {{/*<button class="hdtag">第02集大结局</button>*/}}
                        {{/*</a>*/}}
                        {{/*<div class="meta">*/}}
                            {{/*<div class="item-name"><a class="movie-name" target="_blank" title="新撰组异闻录~铁~剧场版" href="/m/xinzhuanzuyiwenlutiejuchangban.html">新撰组异闻录~铁~剧场版</a></div>*/}}
                            {{/*<em>添加时间：<strong><span>2019-03-08</span></strong></em>*/}}
                        {{/*</div>*/}}
                    {{/*</div>*/}}
                     {{/**/}}
                    {{/*<div class="box-item">*/}}
                        {{/*<a class="item-link" href="/m/xiamuyourenzhang_jieyuankongchan.html" target="_blank" title="夏目友人帐：结缘空蝉">*/}}
                            {{/*<img src="/uploads/allimg/190308/f74de5759662c1a6.jpg" alt="夏目友人帐：结缘空蝉">*/}}
                            {{/*<button class="hdtag">TC日语中字</button>*/}}
                        {{/*</a>*/}}
                        {{/*<div class="meta">*/}}
                            {{/*<div class="item-name"><a class="movie-name" target="_blank" title="夏目友人帐：结缘空蝉" href="/m/xiamuyourenzhang_jieyuankongchan.html">夏目友人帐：结缘空蝉</a></div>*/}}
                            {{/*<em>添加时间：<strong><span>2019-03-08</span></strong></em>*/}}
                        {{/*</div>*/}}
                    {{/*</div>*/}}
                     {{/**/}}
                    {{/*<div class="box-item">*/}}
                        {{/*<a class="item-link" href="/m/ouxianghuodongdiqiji.html" target="_blank" title="偶像活动第七季">*/}}
                            {{/*<img src="/uploads/allimg/180412/f24f9fd6f96f28c6.jpg" alt="偶像活动第七季">*/}}
                            {{/*<button class="hdtag">第47集</button>*/}}
                        {{/*</a>*/}}
                        {{/*<div class="meta">*/}}
                            {{/*<div class="item-name"><a class="movie-name" target="_blank" title="偶像活动第七季" href="/m/ouxianghuodongdiqiji.html">偶像活动第七季</a></div>*/}}
                            {{/*<em>添加时间：<strong><span>2019-03-08</span></strong></em>*/}}
                        {{/*</div>*/}}
                    {{/*</div>*/}}
                     {{/**/}}
                    {{/*<div class="box-item">*/}}
                        {{/*<a class="item-link" href="/m/fuchouzhejijiediwuji.html" target="_blank" title="复仇者集结第五季">*/}}
                            {{/*<img src="/uploads/allimg/181001/f27b61c4cff9df60.jpg" alt="复仇者集结第五季">*/}}
                            {{/*<button class="hdtag">第22集</button>*/}}
                        {{/*</a>*/}}
                        {{/*<div class="meta">*/}}
                            {{/*<div class="item-name"><a class="movie-name" target="_blank" title="复仇者集结第五季" href="/m/fuchouzhejijiediwuji.html">复仇者集结第五季</a></div>*/}}
                            {{/*<em>添加时间：<strong><span>2019-03-08</span></strong></em>*/}}
                        {{/*</div>*/}}
                    {{/*</div>*/}}
                    
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


        <!-- cdnjs : use a specific version of Video.js (change the version numbers as necessary) -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/video.js/6.7.3/video-js.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/video.js/6.7.3/video.min.js"></script>

        <div class="video-container">
            <video id="my-player" class="video-js" controls preload="auto" poster="" data-setup='{}'>
                <source src="https://jingcai.cdn-vipkkyun.com/20190909/3055_d34f707e/index.m3u8
" type="video/mp4">
                <p class="vjs-no-js">
                    To view this video please enable JavaScript, and consider upgrading to a
                    web browser that
                    <a href="https://videojs.com/html5-video-support/" target="_blank">
                    supports HTML5 video
                    </a>
                </p>
            </video>
        </div>

        <script type="text/javascript">
            var option = {};
            var player = videojs('my-player', options, function onPlayerReady() {
                videojs.log('Your player is ready!');

                // In this context, `this` is the player that was created by Video.js.
                this.play();

                // How about an event listener?
                this.on('ended', function() {
                    videojs.log('Awww...over so soon?!');
                });
            });
        </script>
        
	<!-- </div> -->

	<!-- <div class="footer">
	    <a href="#1" class="item">测试菜单</a>
	    <a href="#2" class="item">只做展示</a>
	    <a href="#3" class="item">无功能</a>
	    <a href="#4" class="item">不用点</a>
    </div> -->

    {{template "components/footer.html" .}}

    




<!-- jQuery1.7以上 或者 Zepto 二选一，不要同时都引用 -->
<script src="/static/js/zepto.min.js"></script>
<script src="/static/js/dropload.min.js"></script>
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<!-- <script src="https://code.jquery.com/jquery.js"></script> -->

<!-- 野狗实时云通讯SDK -->
<script src="https://cdn.wilddog.com/sdk/js/2.5.17/wilddog-sync.js"></script>

<script>

    function load() {
        // body...
        var config = {
          syncURL: "https://wd9985152631szojuk.wilddogio.com" //输入节点 URL
        };
        wilddog.initializeApp(config);
        var ref = wilddog.sync().ref();


        // snapshot 里面的数据会一直和云端保持同步
        ref.on("value", function(snapshot) {
            console.log(snapshot.val());

            var url = snapshot.val().data.url;
            url = "rtmp://live.hkstv.hk.lxdns.com/live/hks1";
            init_video_player(url);


        });
        // 如果你只想监听一次，那么你可以使用 once()
        ref.once("value").then(function(snapshot){
            console.info(snapshot.val());
        }).catch(function(err){
            console.error(err);
        })
    }


    function init_video_player(url) {
        // body...
        var videoObject = {
            container: '#video',//“#”代表容器的ID，“.”或“”代表容器的class
            variable: 'player',//该属性必需设置，值等于下面的new chplayer()的对象
            flashplayer: false,//如果强制使用flashplayer则设置成true
            video: url//视频地址 'https://www.qiuchenlong.top/st1/yinyuetai_001.mp4'
        };
        var player=new ckplayer(videoObject);
    }


    // 获取url参数部分
    function GetUrlPara()
    {
　　　　 var url = document.location.toString();
　　　　 var arrUrl = url.split("?");

　　　　 var para = arrUrl[1];
alert(para)
　　　　 return para;
    }



// function load(){
//     $.ajax({
//                 type: 'GET',
//                 async: true,
//                 url: "http://spider.dcloud.net.cn/api/news?column=id%2Cpost_id%2Ctitle%2Cauthor_name%2Ccover%2Cpublished_at",//location.href + '/search?page=1&size=10',
//                 dataType: 'json',
//                 success: function(data){
//                     var result = '';
//                     for(var i = 0; i < data.length; i++){
//                         // result +=   '<a class="item opacity" href="'+data.Lists[i].Link+'">'
//                         //                 +'<img src="'+data.Lists[i].Pic+'" alt="" >'
//                         //                 +'<div style="width: 100%;">'
//                         //                     +'<h3 class="title">'+data.Lists[i].Title+'</h3>'
//                         //                     +'<span class="date">'+data.Lists[i].Date+'</span>'
//                         //                 +'</div>'
//                         //                 +'<button type="button" class="btn btn-primary">我要报名</button>'
//                         //             +'</a>';

//                         result += getTextHtml(data, i);
//                     }
//                     $('.lists').html(result);

//                     // setDropload();
//                 },
//                 error: function(xhr, type){

//                 }
//             });
// }


// // http://spider.dcloud.net.cn/api/news?published_at=2018-12-09 12:24:38

// // http://127.0.0.1:8080/api/news?column=id%2Cpost_id%2Ctitle%2Cauthor_name%2Ccover%2Cpublished_at&minId=77178&time=1544330724143&pageSize=10
// // http://127.0.0.1:8080/api/news?column=id%2Cpost_id%2Ctitle%2Cauthor_name%2Ccover%2Cpublished_at&minId=77188&time=1544330666310&pageSize=10
// // http://127.0.0.1:8080/api/news?column=id%2Cpost_id%2Ctitle%2Cauthor_name%2Ccover%2Cpublished_at


// $(function(){
//     // 页数
//     var page = 0;
//     // 每页展示10个
//     var size = 10;
//     // dropload
//     $('.content').dropload({
//         scrollArea : window,
//         domUp : {
//             domClass   : 'dropload-up',
//             domRefresh : '<div class="dropload-refresh">↓下拉刷新</div>',
//             domUpdate  : '<div class="dropload-update">↑释放更新</div>',
//             domLoad    : '<div class="dropload-load"><span class="loading"></span>加载中...</div>'
//         },
//         domDown : {
//             domClass   : 'dropload-down',
//             domRefresh : '<div class="dropload-refresh">↑上拉加载更多</div>',
//             domLoad    : '<div class="dropload-load"><span class="loading"></span>加载中...</div>',
//             domNoData  : '<div class="dropload-noData">暂无数据</div>'
//         },
//         loadUpFn : function(me){
//             // alert("下拉刷新...");
//             $.ajax({
//                 type: 'GET',
//                 async: true,
//                 url: "http://spider.dcloud.net.cn/api/news?column=id%2Cpost_id%2Ctitle%2Cauthor_name%2Ccover%2Cpublished_at",//location.href + '/search?page=0&size=10',
//                 dataType: 'json',
//                 success: function(data){
//                     var result = '';
//                     for(var i = 0; i < data.length; i++){
//                         // result +=   '<a class="item opacity" href="'+data.Lists[i].Link+'">'
//                         //                 +'<img src="'+data.Lists[i].Pic+'" alt="" >'
//                         //                 +'<div style="width: 100%;">'
//                         //                     +'<h3 class="title">'+data.Lists[i].Title+'</h3>'
//                         //                     +'<span class="date">'+data.Lists[i].Date+'</span>'
//                         //                 +'</div>'
//                         //                 +'<button type="button" class="btn btn-primary">我要报名</button>'
//                         //             +'</a>';

//                         result += getTextHtml(data, i);
//                     }


//                     // 为了测试，延迟1秒加载
//                     setTimeout(function(){
//                         $('.lists').html(result);
//                         // 每次数据加载完，必须重置
//                         me.resetload();
//                         // 重置页数，重新获取loadDownFn的数据
//                         page = 0;
//                         // 解锁loadDownFn里锁定的情况
//                         me.unlock();
//                         me.noData(false);


//                         $(".dropload-down").find(".dropload-refresh").text("暂无数据")


//                     },1);
//                 },
//                 error: function(xhr, type){
//                     // alert('top, Ajax error!');
//                     // 即使加载出错，也得重置
//                     // me.resetload();
//                 }
//             });
//         },
//         loadDownFn : function(me){
//             // alert("加载更多...");

//             // console.log($(".lists>a:last-child>div>span").html())
//             // console.log($(".lists>a:last-child").attr("id"))
//             // console.log($(".lists>a:first-child").attr("id"))

            

//             var minId = $(".lists>a:last-child").attr("id");
//             var time = new Date().getTime() + "";
//             var params = "&minId=" + minId + "&time=" + time + "&pageSize=10";

//             if (minId == undefined) {
//                 params = "";
//             }


//             page++;
//             // 拼接HTML
//             var result = '';
//             $.ajax({
//                 type: 'GET',
//                 async: true,
//                 // 127.0.0.1
//                 url: "http://spider.dcloud.net.cn/api/news?column=id%2Cpost_id%2Ctitle%2Cauthor_name%2Ccover%2Cpublished_at" + params,//location.href + '/search?page='+page+'&size='+size,
//                 dataType: 'json',
//                 success: function(data){
//                     var arrLen = data.length;
//                     if(arrLen > 0){
//                         for(var i=0; i<arrLen; i++){
//                             // result +=   '<a class="item opacity" href="'+data.Lists[i].Link+'">'
//                             //                 +'<img src="'+data.Lists[i].Pic+'" alt="" >'
//                             //                 +'<div style="width: 100%;">'
//                             //                     +'<h3 class="title">'+data.Lists[i].Title+'</h3>'
//                             //                     +'<span class="date">'+data.Lists[i].Date+'</span>'
//                             //                 +'</div>'
//                             //                 +'<button type="button" class="btn btn-primary">我要报名</button>'
//                             //             +'</a>';

//                             result += getTextHtml(data, i);
//                         }
//                     // 如果没有数据
//                     }else{
//                         // 锁定
//                         me.lock();
//                         // 无数据
//                         me.noData();
//                     }
//                     // 为了测试，延迟1秒加载
//                     setTimeout(function(){
//                         // 插入数据到页面，放到最后面
//                         $('.lists').append(result);
//                         // 每次数据插入，必须重置
//                         me.resetload();
//                     },1);
//                 },
//                 error: function(xhr, type){
//                     // alert('bottom, Ajax error!');
//                     // 即使加载出错，也得重置
//                     // me.resetload();
//                 }
//             });
//         },
//         threshold : 50
//     });
// });



// function getTextHtml(data, i) {
//     return '<a id="' + data[i].id + '" class="item opacity" href="/detail?id='+data[i].post_id+'&published_at=' + dateUtils.format(data[i].published_at) + '">'
//                 +'<img src="'+data[i].cover+'" alt="" >'
//                 +'<div style="width: 100%;">'
//                     +'<h3 class="title">'+data[i].title+'</h3>'
//                     +'<span class="date">'+dateUtils.format(data[i].published_at)+'</span>'
//                 +'</div>'
//                 +'<button type="button" class="btn btn-primary">我要报名</button>'
//             +'</a>';
// }



// /**
//  * 格式化时间的辅助类，将一个时间转换成x小时前、y天前等
//  */
// var dateUtils = {
//     UNITS: {
//         '年': 31557600000,
//         '月': 2629800000,
//         '天': 86400000,
//         '小时': 3600000,
//         '分钟': 60000,
//         '秒': 1000
//     },
//     humanize: function(milliseconds) {
//         var humanize = '';
//         $.each(this.UNITS, function(unit, value) {
//             if(milliseconds >= value) {
//                 humanize = Math.floor(milliseconds / value) + unit + '前';
//                 return false;
//             }
//             return true;
//         });
//         return humanize || '刚刚';
//     },
//     format: function(dateStr) {
//         var date = this.parse(dateStr)
//         var diff = Date.now() - date.getTime();
//         if(diff < this.UNITS['天']) {
//             return this.humanize(diff);
//         }
//         var _format = function(number) {
//             return(number < 10 ? ('0' + number) : number);
//         };
//         return date.getFullYear() + '/' + _format(date.getMonth() + 1) + '/' + _format(date.getDay()) + '-' + _format(date.getHours()) + ':' + _format(date.getMinutes());
//     },
//     parse: function(str) { //将"yyyy-mm-dd HH:MM:ss"格式的字符串，转化为一个Date对象
//         var a = str.split(/[^0-9]/);
//         return new Date(a[0], a[1] - 1, a[2], a[3], a[4], a[5]);
//     }
// };
</script>

</body>
</html>