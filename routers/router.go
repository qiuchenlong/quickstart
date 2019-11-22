package routers

import (
	"quickstart/controllers"
	"github.com/astaxie/beego"
)

func init() {
    //beego.Router("/", &controllers.DamaoController{})
    //beego.Router("/", &controllers.BatchController{})
    beego.Router("/", &controllers.MainController{})
    beego.AutoRouter(&controllers.DamaoController{})
    //beego.Router("/damao/live", &controllers.DamaoLiveController{})
    //beego.AutoRouter(&controllers.DamaoLiveController{})
    //beego.Router("/detail", &controllers.DamaoDetailController{})
    beego.AutoRouter(&controllers.DamaoDetailController{})


    //// 首页
    //beego.Router("/", &controllers.MainController{})
    //// 详情页
    //beego.Router("/detail", &controllers.DetailController{})
    // 搜索页
    beego.Router("/search", &controllers.SearchController{})
    // beego.Router("/user", &controllers.UserController{})

    // 注册
    beego.Router("/ProjectSignup", &controllers.ProjectSignupController{})

    // 登录
    beego.Router("/login", &controllers.LoginController{}, "*:LoginIn")

    // 主界面
    beego.Router("/home", &controllers.HomeController{}, "*:Index")

    // 发布
    beego.Router("/pub", &controllers.PubController{}, "*:Pub")

    // 抖音 autorouter   {{host}}/douyin/list
    beego.AutoRouter(&controllers.DouyinController{})
    beego.Router("/douyin.com", &controllers.DouyinController{}, "*:List")

    // 管理员
    beego.AutoRouter(&controllers.AdminController{})


    // 时钟
    beego.AutoRouter(&controllers.ClockController{})
}
