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

    .page-header {
        text-align: center;
    }
    .page-content {
        color: #666;
        line-height: 20px;
        margin: 10px 0px;

        border-radius: 10px;
        padding: 10px;
        background: #fff;
    }
    .page-footer {
        text-align: left;
    }

    .page-divide {
        width: 100%;
        height: 1px;
        background: #999;
        margin: 20px 0;
    }

    // 内容

    .form-group {
        margin: 20px 0;
    }

    .form-check {
        color: #ff5500;
    }

    .btn-submit {
        width: 100%;
    }


    .form-title {
        font-size: 1.2em;
    }

    .label-tip {
        color: #ff1212;
    }

    </style>

    <!-- <link rel="stylesheet" href="/static/css/dropload.css"> -->

</head>
<body>

	<div class="header">
	    <h1>{{.Website}}</h1>
	</div>
	<div class="contents container">
        <div class="page-header">
            <h3>K旅游预约项目</h3>
            <h5><small>发布于 2018-11-01</small><h5>
        </div>
        <div class="page-content">
            <span>K旅游预约项目 21-50岁 男女 有工作，学生 退休人员不要 之前有出国旅游经验，必须有护照，需要带来现场 未来4个月内有计划去中东国家旅游，其他欧美 东南亚等国家不要，看清楚了！ 5、现场自己用平板做访问，时间半小时左右，过程中需要摄像记录， 介意的不要报名，不会用平板的也不要报名！ 时间：11月9-12日 礼金：60元 地点：打浦桥日月光附近
</span>
        </div>

        <div class="page-divide"></div>

        <div class="page-footer">

            <label class="form-title">请填写您的报名信息：</label>

            <form class="form-horizontal" role="form" method="POST">
                <div class="form-group">
                    <label class="col-sm-2 control-label">姓名</label>
                    <div class="col-sm-10 form-username">
                        <input type="text" class="form-control" name="username" placeholder="请输入姓名">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">手机号</label>
                    <div class="col-sm-10 form-phone">
                        <input type="text" class="form-control" name="phone" placeholder="请输入手机号">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">身份证</label>
                    <div class="col-sm-10 form-ID">
                        <input type="text" class="form-control" name="idcard" placeholder="请输入身份证">
                    </div>
                </div>
                <div class="form-group sex-options">
                    <label class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-10 form-sex">
                        <label id="0" class="checkbox-inline"><input type="checkbox" value="man" name="sex">男</label>
                    <!-- </div>
                    <label class="col-sm-2 control-label"></label>
                    <div class="col-sm-10 form-sex"> -->
                        <label id="1" class="checkbox-inline"><input type="checkbox" value="woman" name="sex">女</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10 form-check">
                        <div>
                            <label class="checkbox-inline">
                                <input type="checkbox" checked="true">以上信息保存到常用报名人
                            </label>
                        </div>
                    </div>
                </div>

                <label class="label-tip">注 :*号为必填问题
                </label>

                <div class="page-divide"></div>

                <div class="form-group">
                    <div class="col-sm-12">
                        <button type="submit" class="btn btn-default btn-submit">提交</button>
                    </div>
                </div>
            </form>
        </div>



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
<script src="https://code.jquery.com/jquery.js"></script>

<script>

$(":checkbox[name=sex]").each(function () {
    $(this).click(function() {
        $(":checked[name=sex]").prop("checked", false);
        if($(this).attr("checked") == undefined) {
            $(this).prop("checked", "checked");
        } 
    });
}) 

</script>

</body>
</html>