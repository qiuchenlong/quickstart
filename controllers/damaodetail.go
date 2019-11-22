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

func (self *DamaoDetailController) Detail() {

	name := self.GetString("name");
	playurl := self.GetString("playurl")

	fmt.Println(playurl)

	self.Data["Website"] = "爱播"
	self.Data["Playurl"] = playurl
	self.Data["Name"] = name
	self.TplName = "damao_detail.tpl"
}