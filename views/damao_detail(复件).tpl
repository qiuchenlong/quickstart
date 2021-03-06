<!DOCTYPE html>
<html>
<head>
    <title>爱播</title>
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



<link href="//vjs.zencdn.net/7.3.0/video-js.min.css" rel="stylesheet">
<script src="//vjs.zencdn.net/7.3.0/video.min.js"></script>

<script>window.HELP_IMPROVE_VIDEOJS = false;</script>


<script src="/static/js/videojs-contrib-hls.js"></script>





    <style type="text/css">

        header {
            width: 100%;
            margin: 0 auto;
            padding: 0;
            background: #fff;
            margin-bottom: 5px;
            display: block;
        }

        header .head {
            width: 100%;
            margin: 0 auto;
            padding-top: 15px;
            padding-bottom: 15px;
            padding-right: 0;
            overflow: hidden;
        }

        div {
            display: block;
        }

        body {
            margin: 0;
            padding: 0;
            width: 100%;
            color: #666;
            word-break: break-all;
            word-wrap: break-word;
            font-family: "Segoe UI","Lucida Grande",Helvetica,Arial,"Microsoft YaHei",FreeSans,Arimo,"Droid Sans","wenquanyi micro hei","Hiragino Sans GB","Hiragino Sans GB W3",Arial,sans-serif;
            font-size: 14px;
            background-color: #F6F5F6;
        }

        a:link {
            color: #333;
            text-decoration: none;
        }

        a:hover {
            color: #f60;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        a:visited {
            color: #333;
            text-decoration: none;
        }

    


    
        header .head .logo {
            float: left;
            width: 468px;
            height: 60px;
            background: url(/static/img/logo.png) 0 0 repeat;
        }
        
        header .head .logo a {
            display: block;
            width: 100%;
            height: 100%;
            text-indent: -9999px;
        }

        header .head .search-box {
            float: right;
            height: 50px;
            line-height: 50px;
            display: none;
        }


        .navbar {
            /*height: 40px;*/
            background: #07a7e1;
            /* background: transparent; */
            border: 0px;
            border-radius: 0px;
        }

        .navbar-nav:hover {
            background: skyblue;
        }

        .container-fluid {
            width: 100%;
            margin: 0 auto;
        }        
        .navbar-default .navbar-nav>li>a {
            color: #fff;
        }
        .navbar-default .navbar-nav>li>a:hover {
            color: #fff;
        }

        .navbar-default .navbar-brand {
            color: #fff;
        }



       
        .btn-default{
            color: #fff;
            background: #337ab7;
        }

        
        .main {
            width: 100%;
            margin: 0 auto;
            padding: 15px;
            background: #fff;
            min-height: 500px;
            border-radius: 5px;
            padding: 15px;
            box-sizing: border-box;
            overflow: hidden;
        }

        .movie-title {
            font-size: 24px;
            font-weight: 500;
            color: #333;
            width: 100%;
            margin: 0 0 15px;
        }
    

        .panel .panel-heading {
            padding: 10px 15px;
            border-bottom: 1px solid transparent;
            border-top-left-radius: 3px;
            border-top-right-radius: 3px;
            color: #333;
            background-color: #f5f5f5;
            border-color: #ddd;
        }

        .dslist-group {
            margin-top: 5px;
            margin-left: 4px;
            padding-left: 0px;
            margin-bottom: 5px;
            overflow: hidden;
        }
        .dslist-group li {
            word-break: keep-all;
            overflow: hidden;
            padding: 8px 1px;
            text-overflow: ellipsis;
            white-space: nowrap;
            float: left;
        }
        .dslist-group li a {
            background-color: #e6e6e6;
            border-color: #e6e6e6;
            color: #444444;
            margin: 3px;
            padding: 5px 12px 5px 10px;
            text-decoration: none;
        }

    </style>

    <link rel="stylesheet" href="/static/css/dropload.css">

    <script src="/static/ckplayer/ckplayer.js"></script>

</head>
<body onload="load()">

    <header>
        <div class="head">
    
            <div class="logo">
                <a href="/">爱播</a>
            </div>

            <div class="search-box">
                <form name="formsearch" id="formsearch" action="/" method="post" target="_blank" autocomplete="off">
                    <input type="text" id="keyword" name="searchword" class="search-input" value="搜索视频" onfocus="if(this.value=='搜索视频'){this.value='';}" onblur="if(this.value==''){this.value='搜索视频';};">
                    <input type="submit" id="searchbutton" class="search-button" value="搜索">
                </form>
            </div>

        </div>

        <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#navbar_menu">
                        <span class="sr-only">切换导航</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">爱播</a>
                </div>

                <div class="collapse navbar-collapse" id="navbar_menu">
                    <ul class="nav navbar-nav">
                        <li><a href="#">首页</a></li>
                    </ul>
                    <!-- <ul class="nav navbar-nav">
                        <li><a href="#">电影</a></li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li><a href="#">电视剧</a></li>
                    </ul> -->
                    <ul class="nav navbar-nav">
                        <li><a href="#">直播</a></li>
                    </ul>
                    <!-- <ul class="nav navbar-nav">
                        <li><a href="#">福利</a></li>
                    </ul> -->
                    <form class="navbar-form navbar-left navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="搜索视频">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
                </div>

                
            </div>
        </nav>
    </header>
	
	<div class="main">
        
<!-- 湖南卫视 - live -->
        <h1 class="movie-title">{{ .Name }}</h1>

        <div id="video" style="width:100%; height:500px; display:none;"></div>
        <!-- <script type="text/javascript">
            var videoObject = {
                container: '#video',//“#”代表容器的ID，“.”或“”代表容器的class
                variable: 'player',//该属性必需设置，值等于下面的new chplayer()的对象
                autoplay: true,
                flashplayer:false,//如果强制使用flashplayer则设置成true
                video:'https://www.qiuchenlong.top/st1/yinyuetai_001.mp4'//视频地址
            };
            var player=new ckplayer(videoObject);
        </script> -->



<!-- cdnjs : use a specific version of Video.js (change the version numbers as necessary) -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/video.js/6.7.3/video-js.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/video.js/6.7.3/video.min.js"></script>

<div class="video-container" style="width:100%; height:540px;">
    <video id="my-player" class="video-js" style="width:100%; height:100%;" controls preload="auto" poster="" data-setup='{}'>
        <source src="{{ .Playurl }}" type="video/mp4">
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



{{/*<video id=example-video style="width:100%; height:540px;" class="video-js vjs-default-skin" controls>*/}}
  {{/*<source*/}}
     {{/*src="{{ .Playurl }}"*/}}
     {{/*type="video/mp4">*/}}

     {{/*<--! type="application/x-mpegURL" -->*/}}

{{/*</video>*/}}

{{/*<script>*/}}
{{/*var player = videojs('example-video');*/}}
{{/*player.play();*/}}
{{/*</script>*/}}



        <div class="panel-footer" style="display: none;">
            <strong>《和平饭店》 - 资源观看帮助：</strong><br>
            1、有个别电影打开后播放需要等待。<br>
            2、如果电影打开不能播放请留言给我们，我们更换资源。<br>
            3、有的播放不了请多刷新几下，试试。
        </div>


        <div class="con-des" style="display: none;">
            <p class="des-t"><strong>剧情介绍：</strong></p>
            <p class="summary">《和平饭店》高清完整版在线观看,为您整合提供《和平饭店》免费播放平台资源在线观看,1935年东北沦陷期间，东北敖东城民间爱国志士王大顶追查一批即将流入民间的鸦片膏，入住到和平饭店内。在饭店内遇见了爱国海外归侨医学博士陈佳影。陈佳影在日本学医期间，就已得知日本为加快侵华步伐，正在东北试验细菌武器。为阻止日军的细菌试验，尽快找到生物细菌实验室，陈佳影心怀民族大义发挥自己医学专长积极配合敖东抗日游击分队寻找实验室，无意间进入了和平饭店。而此时的和平饭店已经被日本宪兵彻底包围。王大顶和陈佳影为躲避日伪敌人的调查，萍水相逢的两个年青人只好假扮成夫妻，并在和平饭店与敌人斗智斗勇。最终，王大顶和陈佳影凭借着自身的智慧和勇气，配合敖东抗日游击分队成功的查出了日本人隐藏在饭店内的秘密并一举捣毁了细菌实验室。<br>感谢您一直以来对大猫电影网 www.damaoyy.com的支持，如果《和平饭店》不能正常播放请给我们----&gt;报 错,如果您觉得本站不错，请分享给身边的亲朋好友。</p>
        </div>






        <div class="panel-heading" style="display: none;"><strong><mb class="mbnone">《和平饭店》 - </mb>kuyun在线视频 (支持手机)高清资源 - 在线播放 - 如果不能播放请换一个播放通道：</strong></div>

        <ul class="dslist-group" style="display: none;">
            <li><a title="第01集" href="/d/hepingfandian/-5-0.html" target="_self">第01集</a></li><li><a title="第02集" href="/d/hepingfandian/-5-1.html" target="_self">第02集</a></li><li><a title="第03集" href="/d/hepingfandian/-5-2.html" target="_self">第03集</a></li><li><a title="第04集" href="/d/hepingfandian/-5-3.html" target="_self">第04集</a></li><li><a title="第05集" href="/d/hepingfandian/-5-4.html" target="_self">第05集</a></li><li><a title="第06集" href="/d/hepingfandian/-5-5.html" target="_self">第06集</a></li><li><a title="第07集" href="/d/hepingfandian/-5-6.html" target="_self">第07集</a></li><li><a title="第08集" href="/d/hepingfandian/-5-7.html" target="_self">第08集</a></li><li><a title="第09集" href="/d/hepingfandian/-5-8.html" target="_self">第09集</a></li><li><a title="第10集" href="/d/hepingfandian/-5-9.html" target="_self">第10集</a></li><li><a title="第11集" href="/d/hepingfandian/-5-10.html" target="_self">第11集</a></li><li><a title="第12集" href="/d/hepingfandian/-5-11.html" target="_self">第12集</a></li><li><a title="第13集" href="/d/hepingfandian/-5-12.html" target="_self">第13集</a></li><li><a title="第14集" href="/d/hepingfandian/-5-13.html" target="_self">第14集</a></li><li><a title="第15集" href="/d/hepingfandian/-5-14.html" target="_self">第15集</a></li><li><a title="第16集" href="/d/hepingfandian/-5-15.html" target="_self">第16集</a></li><li><a title="第17集" href="/d/hepingfandian/-5-16.html" target="_self">第17集</a></li><li><a title="第18集" href="/d/hepingfandian/-5-17.html" target="_self">第18集</a></li><li><a title="第19集" href="/d/hepingfandian/-5-18.html" target="_self">第19集</a></li><li><a title="第20集" href="/d/hepingfandian/-5-19.html" target="_self">第20集</a></li><li><a title="第21集" href="/d/hepingfandian/-5-20.html" target="_self">第21集</a></li><li><a title="第22集" href="/d/hepingfandian/-5-21.html" target="_self">第22集</a></li><li><a title="第23集" href="/d/hepingfandian/-5-22.html" target="_self">第23集</a></li><li><a title="第24集" href="/d/hepingfandian/-5-23.html" target="_self">第24集</a></li><li><a title="第25集" href="/d/hepingfandian/-5-24.html" target="_self">第25集</a></li><li><a title="第26集" href="/d/hepingfandian/-5-25.html" target="_self">第26集</a></li><li><a title="第27集" href="/d/hepingfandian/-5-26.html" target="_self">第27集</a></li><li><a title="第28集" href="/d/hepingfandian/-5-27.html" target="_self">第28集</a></li><li><a title="第29集" href="/d/hepingfandian/-5-28.html" target="_self">第29集</a></li><li><a title="第30集" href="/d/hepingfandian/-5-29.html" target="_self">第30集</a></li><li><a title="第31集" href="/d/hepingfandian/-5-30.html" target="_self">第31集</a></li><li><a title="第32集" href="/d/hepingfandian/-5-31.html" target="_self">第32集</a></li><li><a title="第33集" href="/d/hepingfandian/-5-32.html" target="_self">第33集</a></li><li><a title="第34集" href="/d/hepingfandian/-5-33.html" target="_self">第34集</a></li><li><a title="第35集" href="/d/hepingfandian/-5-34.html" target="_self">第35集</a></li><li><a title="第36集" href="/d/hepingfandian/-5-35.html" target="_self">第36集</a></li><li><a title="第37集" href="/d/hepingfandian/-5-36.html" target="_self">第37集</a></li><li><a title="第38集" href="/d/hepingfandian/-5-37.html" target="_self">第38集</a></li><li><a title="第39集" href="/d/hepingfandian/-5-38.html" target="_self">第39集</a></li>
        </ul>
        
	</div>

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
            url = "http://ivi.bupt.edu.cn/hls/hunanhd.m3u8";
            url = "http://yun.kubozy-youku-163.com/20190309/7078_157456e5/1000k/hls/index.m3u8"

            url = "http://hlsmgsplive.miguvideo.com:8080/wd-hunanhd-350/01.m3u8?msisdn=migu&mdspid=&spid=699017&netType=0&sid=2201064496&pid=2028597799&timestamp=20190314213622&Channel_ID=1004_10010001005&ProgramID=619858170&ParentNodeID=-99&assertID=2201064496&client_ip=47.98.184.16&SecurityKey=20190314213622&promotionId=&mvid=&mcid=&mpid=&mtv_session=7d1800869da526022584358c5454aba4&HlsSubType=1&HlsProfileId=1&nphaid=0&encrypt=b01d5731879794b852ca6b10ecd4704b";

            url = "http://cctv5cncw.v.wscdns.com/live/cctv5_1/index.m3u8?contentid=2820180516001";

            url = "rtmp://58.200.131.2:1935/livetv/hunantv"

            url = {{ .Playurl }}

            //init_video_player(url);


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
            live: true,
            autoplay: true,
            video: url//视频地址 'https://www.qiuchenlong.top/st1/yinyuetai_001.mp4'
        };
        var player=new ckplayer(videoObject);


        setInterval(getTimeStamp, 3000);
    }


    function getTimeStamp() {
        var timestamp = Date.parse(new Date()) / 1000;
        console.log(timestamp);
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