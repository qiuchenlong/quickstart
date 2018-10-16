package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	// c.Data["Website"] = "beego.me"
	// c.Data["Email"] = "astaxie@gmail.com"
	// c.TplName = "index.tpl"
	// c.Ctx.WriteString("hello world.")
	c.TplName = "list.html"
}


type SearchController struct {
	beego.Controller
}

type JSONStruct struct {
    Lists []DataStruct
    Length int
}

type DataStruct struct {
    Title string
    Pic string
    Link  string
    Date  string
}

func (c *SearchController) Get() {


	mystruct := &JSONStruct{[]DataStruct{
		{"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		{"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		{"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		{"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		{"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		{"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		{"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		{"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		{"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		{"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		}, 10}
    c.Data["json"] = mystruct
    c.ServeJSON()



	// mystruct := &JSONStruct{[]DataStruct{
	// 	{"1", "2"},
	// 	{"1", "2"},
	// 	{"1", "2"},
	// 	{"1", "2"},
	// 	{"1", "2"},
	// 	{"1", "2"},
	// 	{"1", "2"},
	// 	{"1", "2"},
	// 	{"1", "2"},
	// 	{"10", "2"},
	// 	}, 100}
 //    c.Data["json"] = mystruct
 //    c.ServeJSON()
}
