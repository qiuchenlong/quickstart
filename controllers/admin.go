package controllers

import (
	"github.com/astaxie/beego"
)

type AdminController struct {
	beego.Controller
}

func (self *AdminController) Get() {
	self.TplName = "admin.html"
}