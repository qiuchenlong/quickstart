/*
* @Module: 主页
* @Author: 邱晨龙
* @Date:   2018-11-08
*/
package controllers

import (
	// "fmt"
	// "strings"
	// "time"

	// "quickstart/libs"
	// "quickstart/models"
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	//c.Data["Website"] = "爱播"
	//// c.Data["Email"] = "astaxie@gmail.com"
	//c.TplName = "damao.html"
	////c.TplName = "list.html"

	//c.Redirect("/damao/damao", 302)
	c.Redirect("/douyin/list", 302)
}