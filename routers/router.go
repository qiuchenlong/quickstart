package routers

import (
	"quickstart/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
    beego.Router("/search", &controllers.SearchController{})
    beego.Router("/user", &controllers.UserController{})
    beego.Router("/ProjectSignup", &controllers.ProjectSignupController{})
}
