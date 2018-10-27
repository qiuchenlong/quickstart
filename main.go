package main

import (
	"quickstart/models"
	_ "quickstart/routers"

	"github.com/astaxie/beego"
)





func main() {

	models.Init()

	// 静态资源目录
	beego.SetStaticPath("/down", "download")

	beego.Run(":8080")
}

