package controllers

import (
	"fmt"
	"strconv"
	"strings"
	"time"

	"quickstart/libs"
	"quickstart/models"
	"github.com/astaxie/beego"
)

type LoginController struct {
	BaseController
}

func (self *LoginController) LoginIn() {
	if self.userId > 0 {
		self.redirect(beego.URLFor("HomeController.Index"))
	}
	// 读取表单
	beego.ReadFromRequest(&self.Controller)
	// 如果是POST请求
	if self.isPost() {

		// flash := beego.NewFlash()
		// errorMsg := ""

		username := strings.TrimSpace(self.GetString("username"))
		password := strings.TrimSpace(self.GetString("password"))

		// if username != "" && password != "" {
		// 	if username == "admin" && password == "123456" {
		// 		self.redirect(beego.URLFor("HomeController.Index"))
		// 	}
		// }

		if username != "" && password != "" {
			user, err := models.AdminGetByName(username)
			fmt.Println(user)
			fmt.Println(err)
			flash := beego.NewFlash()
			errorMsg := ""

			fmt.Println(libs.Md5([]byte(password+user.Salt)))
			
			if err != nil || user.Password != libs.Md5([]byte(password+user.Salt)) {
				errorMsg = "帐号或密码错误"
			} else if user.Status == -1 {
				errorMsg = "该帐号已禁用"
			} else {
				user.LastIp = self.getClientIp()
				user.LastLogin = time.Now().Unix()
				user.Update()
				authkey := libs.Md5([]byte(self.getClientIp() + "|" + user.Password + user.Salt))
				self.Ctx.SetCookie("auth", strconv.Itoa(user.Id)+"|"+authkey, 7*86400)

				self.redirect(beego.URLFor("HomeController.Index"))
			}

			flash.Error(errorMsg)
			flash.Store(&self.Controller)

			self.redirect(beego.URLFor("LoginController.LoginIn"))
			// self.redirect(beego.URLFor("HomeController.Index"))
		}
	}
	self.TplName = "admin/login.tpl"
}








