package routers

import (
	"quickstart/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
    beego.Router("/search", &controllers.SearchController{})
    // beego.Router("/user", &controllers.UserController{})
    beego.Router("/ProjectSignup", &controllers.ProjectSignupController{})

    // 管理员
    beego.Router("/login", &controllers.LoginController{}, "*:LoginIn")


    beego.Router("/home", &controllers.HomeController{}, "*:Index")
    beego.Router("/pub", &controllers.PubController{}, "*:Pub")


    beego.AutoRouter(&controllers.AdminController{})
}
