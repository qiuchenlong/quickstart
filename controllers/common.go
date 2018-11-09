package controllers

import (
	"strings"

	"quickstart/models"
	"github.com/astaxie/beego"
)

const (
	MSG_OK  = 0
	MSG_ERR = -1
)

type BaseController struct {
	beego.Controller
	controllerName string
	actionName     string
	user           *models.Admin
	userId         int
	userName       string
	loginName      string
	pageSize       int
	allowUrl       string
	noLayout	   bool
}


// 前期准备
func (self *BaseController) Prepare() {
	self.pageSize = 20
	controllerName, actionName := self.GetControllerAndAction()
	// 把Controller去掉，前面的业务名称小写
	self.controllerName = strings.ToLower(controllerName[0 : len(controllerName) - 10])
	self.actionName = strings.ToLower(actionName)

	self.Data["version"] = beego.AppConfig.String("version")
	self.Data["siteName"] = beego.AppConfig.String("site.name")
	
}


// 是否是POST请求
func (self *BaseController) isPost() bool {
	return self.Ctx.Request.Method == "POST"
}


//获取用户IP地址
func (self *BaseController) getClientIp() string {
	s := strings.Split(self.Ctx.Request.RemoteAddr, ":")
	return s[0]
}


// 重定向
func (self *BaseController) redirect(url string) {
	self.Redirect(url, 302)
	self.StopRun()
}


// 加载模板
func (self *BaseController) display(tpl ...string) {
	var tplname string
	if len(tpl) > 0 {
		// 拼接真实的html页面名称
		tplname = strings.Join([]string{tpl[0], "html"}, ".") 
	} else {
		// 没有传
		tplname = self.controllerName + "/" + self.actionName + ".html"
	}

	self.TplName = tplname
}


// ajax返回
func (self *BaseController) ajaxMsg(msg interface{}, msgno int) {
	out := make(map[string]interface{})
	out["status"] = msgno
	out["message"] = msg
	self.Data["json"] = out
	self.ServeJSON()
	self.StopRun()
}

// ajax返回 列表
func (self *BaseController) ajaxList(msg interface{}, msgno int, count int64, data interface{}) {
	out := make(map[string]interface{})
	out["code"] = msgno
	out["msg"] = msg
	out["count"] = count
	out["data"] = data
	self.Data["json"] = out
	self.ServeJSON()
	self.StopRun()
}

