package main

import (
	_ "quickstart/routers"
	"github.com/astaxie/beego"
)

func main() {
	// 静态资源目录
	beego.SetStaticPath("/down", "download")

	beego.Run()
}

