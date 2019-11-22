

package controllers

import (
	// "fmt"
	// "strings"
	// "time"

	// "quickstart/libs"
	// "quickstart/models"
	// "github.com/astaxie/beego"
)

type ClockController struct {
	BaseController
}

func (self *ClockController) List() {
	self.Data["pageTitle"] = "管理员列表"
	self.display()
}