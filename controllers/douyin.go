package controllers

type DouyinController struct {
	BaseController
}

func (self *DouyinController) List() {
	self.Data["pageTitle"] = "抖音网页版"
	self.display()
	// self.TplName = "douyin/list.tpl"
}