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
                        <li><a href="/damao/fuli">福利</a></li>
                    </ul>
                    <form class="navbar-form navbar-left navbar-right" role="search" target="_blank" action="/damao/damao" method="get">
                        <div class="form-group">
                            <input name="searchword" type="text" class="form-control" placeholder="搜索视频">
                        </div>
                        <button type="submit" class="btn btn-default">搜索</button>
                    </form>
                </div>


            </div>
        </nav>
    </header>