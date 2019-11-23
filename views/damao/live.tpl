<!DOCTYPE html>
<html>
<head>
    {{template "head.tpl" .}}

    <!-- css -->
    <link href="/static/videojs/7.3.0/css/video-js.min.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="/static/css/videojs-matrix.css">

    <style type="text/css">
        
        .video-container {
            height: 351px;            
        }
        .video-js {
            width: 100%;
            height: 100%;
        }
        /*.video-js .vjs-big-play-button {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 64px;
            height: 46px;
            margin-left: -32px;
            margin-top: -23px;
        }*/

    </style>


    <!-- js -->
    <script src="/static/7.3.0/js/video.min.js"></script>
    <script>window.HELP_IMPROVE_VIDEOJS = false;</script>


</head>
<body>

    {{template "header.tpl" .}}

    <div class="main-container">
        
        <div class="row-five">
            <div class="box-title"><b>东方卫视：</b></div>
            <div class="box-body">
                <!-- video player -->
                <div class="video-container">
                    <video id="video-player" class="video-js" controls preload="auto" poster="/static/image/dongfangweishi.jpg" data-setup="{}">
                        <source src="https://mvvideoshare2.meitudata.com/5d46a41fcbb7112xqwm48x3375_H264_MP5d46aa.mp4?k=6850aeb47c5c1f1d383d05bdbc96dd5d&t=5ddb728f" type="video/mp4">


                        <!-- live m3u8 -->
                        <!-- <source src="http://ivi.bupt.edu.cn/hls/cctv1hd.m3u8" type="application/x-mpegURL"> -->
                        <!-- <source src="http://cctvtxyh5ca.liveplay.myqcloud.com/wstv/dongfang_2/index.m3u8" type="application/x-mpegURL"> -->
                            
                    </video>
                </div>
            </div>
        </div>
    </div>




    {{template "components/footer.html" .}}


</body>


<!-- jQuery1.7以上 或者 Zepto 二选一，不要同时都引用 -->
<script src="/static/js/zepto.min.js"></script>
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<!-- <script src="https://code.jquery.com/jquery.js"></script> -->

</html>