

package controllers

type PubController struct {
	BaseController
}

func (self *PubController) Pub() {
	self.TplName = "admin/pub.tpl"
}