<!DOCTYPE html>
<html>
<head>
	<title>活动详情</title>
  	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
     <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
     <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

  	<style>
    *{
        margin: 0;
        padding:0;
        -webkit-tap-highlight-color:rgba(0,0,0,0);
        -webkit-text-size-adjust:none;
    }
    html{
        font-size: 10px;
    }
    body{
        background-color: #f5f5f5;
        font-size: 1.2em;
    }
    .header{
        height: 44px;
        line-height: 44px;
        border-bottom: 1px solid #ccc;
        background-color: #eee;
    }
    .header h1{
        text-align: center;
        font-size: 2rem;
        font-weight: normal;
		color: #333;
		margin-top: 0px;
		padding-top: 12px;

    }
    .content{
		padding-top: 2px;
        padding-bottom: 40px;
        background-color: #ebebeb;
    }
    .content .item{
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align:center;
        -webkit-box-align:center;
        box-align:center;
        -webkit-align-items:center;
        align-items:center;
        padding:3.125%;
        /*border-bottom: 1px solid #ddd;*/
        color: #333;
        text-decoration: none;

        border-radius: 10px;
        background: #fff;
        margin: 12px 15px;
    }
    .content .item img{
        display: block;
        width: 40px;
        height: 40px;
        border:1px solid #ddd;
		display: none;
    }
    .content .item h3{
        display: block;
        -webkit-box-flex: 1;
        -webkit-flex: 1;
        -ms-flex: 1;
        flex: 1;
        width: 100%;
        max-height: 40px;
        overflow: hidden;
        line-height: 20px;
        margin: 0 0px;
        font-size: 1.5rem;
    }
    .content .item .date{
        display: block;
        height: 20px;
        line-height: 20px;
        color: #999;
    }
    .opacity{
        -webkit-animation: opacity 0.3s linear;
        animation: opacity 0.3s linear;
    }
    @-webkit-keyframes opacity {
        0% {
            opacity:0;
        }
        100% {
            opacity:1;
        }
    }
    @keyframes opacity {
        0% {
            opacity:0;
        }
        100% {
            opacity:1;
        }
    }
    .footer{
        position: fixed;
        left: 0;
        bottom: 0;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        width: 100%;
        height: 40px;
		display: none;
    }
    .footer a{
        position: relative;
        display: block;
        -webkit-box-flex: 1;
        -webkit-flex: 1;
        -ms-flex: 1;
        flex: 1;
        line-height: 40px;
        text-align: center;
        color: #666;
        background-color: #eee;
        text-decoration: none;
    }
    .footer a:before{
        content: '';
        position: absolute;
        left: 0;
        top: 10px;
        width: 1px;
        height: 20px;
        background-color: #ccc;
    }
    .footer a:first-child:before{
        display: none;
    }

    .contents {
        text-align: center;
    }
    .page-content {
        color: #666;
        line-height: 20px;
        margin: 10px 20px;
    }
    </style>

    <!-- <link rel="stylesheet" href="/static/css/dropload.css"> -->

</head>
<body onload="load()">

	<div class="header">
	    <h1>{{.Website}}</h1>
	</div>
	<div class="contents container">
        <div class="page-header">
            <h3>厦门</h3>
            <h5><small>思明区</small><h5>
        </div>
        <div class="page-content">
            <span>58同城 美国纽交所上市公司，国内专业的“本地、免费、真实、高效”生活服务平台！找工作，找兼职，买卖二手物品，二手车交易，买卖宠物，找搬家，找保姆，上58同城一站解决！信息真实可靠，先行赔付！
www.58.com - 品牌广告
</span>
        </div>
	    <form class="form-horizontal" role="form">
            <div class="form-group">
                <label class="col-sm-2 control-label">姓名</label>
                <div class="col-sm-10 form-username">
                    <input type="text" name="form-control" placeholder="请输入姓名">
                </div>
                <label class="col-sm-2 control-label">手机号</label>
                <div class="col-sm-10 form-phone">
                    <input type="text" name="form-control" placeholder="请输入手机号">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">提交</button>
                </div>
            </div>
        </form>
	</div>
	<div class="footer">
	    <a href="#1" class="item">测试菜单</a>
	    <a href="#2" class="item">只做展示</a>
	    <a href="#3" class="item">无功能</a>
	    <a href="#4" class="item">不用点</a>
	</div>


<!-- jQuery1.7以上 或者 Zepto 二选一，不要同时都引用 -->
<script src="/static/js/zepto.min.js"></script>
<script src="/static/js/dropload.min.js"></script>
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<!-- <script src="https://code.jquery.com/jquery.js"></script> -->

<script>

</script>

</body>
</html>