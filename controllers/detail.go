package controllers

import (
	// "fmt"
)



type DetailController struct {
	BaseController
}

func (self *DetailController) Get() {
	// c.Data["Website"] = "beego.me"
	// c.Data["Email"] = "astaxie@gmail.com"
	// c.TplName = "index.tpl"
	// c.Ctx.WriteString("hello world.")

	id := self.GetString("id")
	published_at := self.GetString("published_at")


	// 数据
	self.Data["Website"] = "详情页面"
	self.Data["id"] = id
	self.Data["published_at"] = published_at

	// 模板
	self.TplName = "detail.tpl"
}

// func (self *DetailController) Post() {
// 	username := self.GetString("username")
// 	phone := self.GetString("phone")
// 	idcard := self.GetString("idcard")
// 	sex := self.GetString("sex")

// 	project := make(map[string]interface{})
// 	project["username"] = username
// 	project["phone"] = phone
// 	project["idcard"] = idcard
// 	project["sex"] = sex

// 	self.ajaxMsg(project, MSG_OK)
// }



