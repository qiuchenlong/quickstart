/*
* @Module: 大猫
* @Author: 邱晨龙
* @Date:   2019-06-02
*/
package controllers

import (
	"quickstart/models"
	"fmt"
)

type BatchController struct {
	BaseController
}

func (self *BatchController) Get() {

	//self.Data = "hello world"

	fmt.Println(models.BatchInsert())

	self.Ctx.WriteString("hello world.")
}