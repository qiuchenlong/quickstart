/*
* @Module: 主页
* @Author: 邱晨龙
* @Date:   2018-11-08
*/
package controllers

import (
	// "fmt"
	// "strings"
	// "time"

	// "quickstart/libs"
	// "quickstart/models"
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	//c.Data["Website"] = "爱播"
	//// c.Data["Email"] = "astaxie@gmail.com"
	//c.TplName = "damao.html"
	////c.TplName = "list.html"

	c.Redirect("/damao/damao", 302)
	// c.Redirect("/damaodetail/detail?name=【太阳当空照NANA美拍】赶上热巴小姐姐的末班车#舞蹈#&playurl=https://cracl.meitubase.com/resource/get_cdn_url?url=https://mvvideoshare2.meitudata.com/5dc188eed69c4egvwkwh0s8714_H264_MP5dc18c.mp4?k=62f014a3cb6fb764e9b58b6a43fca943&t=5ddb5ae0", 302)
	// c.Redirect("/damaodetail/detail?name=【东方卫视】&playurl=https://cracl.meitubase.com/resource/get_cdn_url?url=https://mvvideoshare2.meitudata.com/5dc188eed69c4egvwkwh0s8714_H264_MP5dc18c.mp4?k=62f014a3cb6fb764e9b58b6a43fca943&t=5ddb5ae0", 302)
	// c.Redirect("/douyin/list", 302)
	// c.Redirect("/douyin.com", 302)
	// c.TplName = "webgl.html"
}