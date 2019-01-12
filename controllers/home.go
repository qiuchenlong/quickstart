package controllers


type HomeController struct {
	BaseController
}

func (self *HomeController) Index() {
	self.Data["pageTitle"] = "系统首页"
	self.TplName = "admin/main.tpl"
}

func (self *HomeController) Start() {
	self.Data["pageTitle"] = "控制面板"
	self.display()
}








