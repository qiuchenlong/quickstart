/*
* @Module: 管理员
* @Author: 邱晨龙
* @Date:   2018-11-08
*/
package controllers

import (
	// "fmt"
	"strings"
	"time"

	"quickstart/libs"
	"quickstart/models"
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
		{"title", "/down/1.jpeg", "/ProjectSignup", "description"},
		{"title", "/down/1.jpeg", "/ProjectSignup", "description"},
		{"title", "/down/1.jpeg", "/ProjectSignup", "description"},
		{"title", "/down/1.jpeg", "/ProjectSignup", "description"},
		{"title", "/down/1.jpeg", "/ProjectSignup", "description"},
		{"title", "/down/1.jpeg", "/ProjectSignup", "description"},
		{"title", "/down/1.jpeg", "/ProjectSignup", "description"},
		{"title", "/down/1.jpeg", "/ProjectSignup", "description"},
		{"title", "/down/1.jpeg", "/ProjectSignup", "description"},
		{"title", "/down/1.jpeg", "/ProjectSignup", "description"},

		// {"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		// {"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		// {"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		// {"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		// {"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		// {"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		// {"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		// {"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		// {"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
		// {"13950209512", "/down/1.jpeg", "http://www.aimer.im/", "邱晨龙 year～～"},
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






type AdminController struct {
	BaseController
}

func (self *AdminController) List() {
	self.Data["pageTitle"] = "管理员列表"
	self.display()
	// self.TplName = "admin/list.html"
}

func (self *AdminController) Add() {
	self.Data["pageTitle"] = "新增管理员"

	// // 角色
	// filters := make([]interface{}, 0)
	// filters = append(filters, "status", 1)
	// result, _ := models.ReleGetList(1, 1000, filters...)
	// for k, v := range result {
	// 	row := make(map[string]interface{})
	// 	row["id"] = v.Id
	// 	row["role_name"] = v.RoleName
	// 	list[k] = row
	// }

	// self.Data["role"] = list

	self.display()
}

func (self *AdminController) AjaxSave() {
	Admin_id, _ := self.GetInt("id")
	if Admin_id == 0 {
		Admin := new(models.Admin)
		Admin.LoginName = strings.TrimSpace(self.GetString("login_name"))
		Admin.RealName = strings.TrimSpace(self.GetString("real_name"))
		Admin.Phone = strings.TrimSpace(self.GetString("phone"))
		Admin.Email = strings.TrimSpace(self.GetString("email"))
		Admin.RoleIds = strings.TrimSpace(self.GetString("roleids"))
		Admin.UpdateTime = time.Now().Unix()
		Admin.UpdateId = self.userId
		Admin.Status = 1

		// // 检查登录名是否已经存在
		// _, err := models.AdminGetByName(Admin.LoginName)

		// if err == nil {
		// 	self.ajaxMsg("登录名已经存在", MSG_ERR)
		// }
		//新增
		pwd, salt := libs.Password(4, "")
		Admin.Password = pwd
		Admin.Salt = salt
		Admin.CreateTime = time.Now().Unix()
		Admin.CreateId = self.userId
		if _, err := models.AdminAdd(Admin); err != nil {
			self.ajaxMsg(err.Error(), MSG_ERR)
		}
		self.ajaxMsg("", MSG_OK)
	}
}


func (self *AdminController) Table() {
	//列表
	page, err := self.GetInt("page")
	if err != nil {
		page = 1
	}
	limit, err := self.GetInt("limit")
	if err != nil {
		limit = 30
	}

	self.pageSize = limit
	//查询条件
	filters := make([]interface{}, 0)
	filters = append(filters, "status", 1)
	result, count := models.AdminGetList(page, self.pageSize, filters...)
	list := make([]map[string]interface{}, len(result))
	for k, v := range result {
		row := make(map[string]interface{})
		row["id"] = v.Id
		row["login_name"] = v.LoginName
		row["real_name"] = v.RealName
		row["phone"] = v.Phone
		row["email"] = v.Email
		row["role_ids"] = v.RoleIds
		row["create_time"] = beego.Date(time.Unix(v.CreateTime, 0), "Y-m-d H:i:s")
		row["update_time"] = beego.Date(time.Unix(v.UpdateTime, 0), "Y-m-d H:i:s")
		list[k] = row
	}
	self.ajaxList("成功", MSG_OK, count, list)
}










type ProjectSignupController struct {
	BaseController
}

func (self *ProjectSignupController) Get() {
	// c.Data["Website"] = "beego.me"
	// c.Data["Email"] = "astaxie@gmail.com"
	// c.TplName = "index.tpl"
	// c.Ctx.WriteString("hello world.")

	// 数据
	self.Data["Website"] = "项目"

	// 模板
	self.TplName = "ProjectSignupServlet.tpl"
}

func (self *ProjectSignupController) Post() {
	username := self.GetString("username")
	phone := self.GetString("phone")
	idcard := self.GetString("idcard")
	sex := self.GetString("sex")

	project := make(map[string]interface{})
	project["username"] = username
	project["phone"] = phone
	project["idcard"] = idcard
	project["sex"] = sex

	self.ajaxMsg(project, MSG_OK)
}













