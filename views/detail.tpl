<!DOCTYPE html>
<html>
<head>
	{{template "header.tpl" .}}

	<style type="text/css">
		.kr-article-banner {
			height: 180px;
			position: relative;
			overflow: hidden;
		}
		.kr-article-cover {
			background-position: center;
			background-color: #ccc;
			background-size: cover;
			background-repeat: no-repeat;
			width: 100%;
			height: 180px;
			position: relative;
		}
		.kr-article-cover img {
			width: 100%;
		}

		.kr-article-bar a {
			color: gray;
		}
		.kr-article-title {
			position: absolute;
			left: 15px;
			bottom: 15px;
			width: 90%;
			font-size: 16px;
			font-weight: 400;
			line-height: 21px;
			color: white;
			z-index: 11;
		}
		.kr-article-content {
			background: #efeff4;
		}

		.kr-article-meta {
			padding: 10px 0 10px 20px;
			display: table;
		}
		.kr-article-meta div {
			height: 30px;
			font-size: 15px;
			display: table-cell;
			vertical-align: middle;
			color: gray;
			padding: 0 5px;
		}
		.kr-article-avatar img {
			width: 30px;
		}
		.kr-article-text {
			font-size: 13px!important;
		}
		.kr-article-author,
		.kr-article-time {
			font-weight: 600;
		}
		.kr-article-article {
			font-size: 15px;
			padding: 0 15px;
			color: #000;
		}
		.kr-article-article ol {
			margin: 0 0 0 20px;
			padding: 0;
		}
		.kr-article-article p {
			color: #000;
			font-size: 15px;
			line-height: 23px;
		}

		.kr-article-article img,
		.kr-article-article iframe {
			max-width: 100%;
			width: 100%;
			height: auto;
		}
		embed,object{
			display: none;
		}
		.kr-article-content {}
		.kr-browser .mui-bar .mui-btn {
			top: 10px;
			padding: 2px 12px 2px;
		}
		.kr-browser-bar .mui-spinner {
			width: 20px;
			height: 20px;
		}
		.kr-browser-bar a {
			color: gray;
		}
	</style>
</head>
<body onload="load()">
	<div class="header" style="display: none;">
	    <h1>{{.Website}}</h1>
	</div>

	<div class="mui-content">
		<!--顶部banner图 开始-->
		<div id="kr-article-banner" class="kr-article-banner">
			<div id="kr-article-cover" class="kr-article-cover">
				<!-- <img > -->
			</div>
			<h2 id="kr-article-title" class="kr-article-title"></h2>
		</div>
		<!--顶部banner图 结束-->
		
		<div class="kr-article-content">
			<!-- 文章作者、发布时间等信息 -->
			<div class="kr-article-meta">
				<div id="kr-article-author" class="kr-article-author"></div>
				<div class="kr-article-text">发表于</div>
				<div id="kr-article-time" class="kr-article-time">{{.published_at}}</div>
			</div>
			<!--文章详细内容-->
			<div id="kr-article-article" class="kr-article-article" v-html="content"></div>
		</div>
	</div>


<script src="https://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	function load() {
		$.ajax({
            type: 'GET',
            async: true,
            url: "http://spider.dcloud.net.cn/api/news/36kr/" + {{.id}},
            dataType: 'json',
            success: function(data){
            	console.log(data)
            	$("#kr-article-cover").append("<img src='"+data.cover+"' >")
                $("#kr-article-title").append(data.title);
                $("#kr-article-author").append(data.author_name);
                // $("#kr-article-time").append(data.published_at);
                $("#kr-article-article").append(data.content);
            },
            error: function(xhr, type){
            }
        });
	}
	
</script>


</body>
</html>