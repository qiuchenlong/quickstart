<!DOCTYPE html>
<html>
<head>
    {{template "head.tpl" .}}
</head>
<body onload="load()">


    {{template "header.tpl" .}}


    <section class="main-container">
        <div class="row-five">
            <div class="box-title"><b>最新视频：</b></div>
            <div class="box-body">

                {{range .List}}

                <div class="box-item">
                    <a class="item-link" href="{{ .url }}" target="_blank" title="{{ .name }}">
                        <img src="{{ .image }}" alt="{{ .name }}">
                        <button class="hdtag">更新至8集/共12集</button>
                    </a>
                    <div class="meta">
                        <div class="item-name"><a class="movie-name" target="_blank" title="{{ .name }}" href="{{ .url }}">{{ .name }}</a></div>
                        <em>添加时间：<strong><span>{{ .create_time }}</span></strong></em>
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