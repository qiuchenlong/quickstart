/*
* @Module: 大猫
* @Author: 邱晨龙
* @Date:   2019-06-02
*/
package controllers

import (
	"fmt"
)


type DamaoDetailController struct {
	BaseController
}

func (self *DamaoDetailController) Get() {

	id := self.GetString("id")

	fmt.Println(id)

	self.Data["Website"] = "爱播"
	self.TplName = "damao_detail.html"
}