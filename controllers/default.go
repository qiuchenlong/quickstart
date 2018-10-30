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
		{"title", "/down/1.jpeg", "http://www.aimer.im/", "description"},
		{"title", "/down/1.jpeg", "http://www.aimer.im/", "description"},
		{"title", "/down/1.jpeg", "http://www.aimer.im/", "description"},
		{"title", "/down/1.jpeg", "http://www.aimer.im/", "description"},
		{"title", "/down/1.jpeg", "http://www.aimer.im/", "description"},
		{"title", "/down/1.jpeg", "http://www.aimer.im/", "description"},
		{"title", "/down/1.jpeg", "http://www.aimer.im/", "description"},
		{"title", "/down/1.jpeg", "http://www.aimer.im/", "description"},
		{"title", "/down/1.jpeg", "http://www.aimer.im/", "description"},
		{"title", "/down/1.jpeg", "http://www.aimer.im/", "description"},

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






type UserController struct {
	BaseController
}

func (self *UserController) Post() {
	User_id, _ := self.GetInt("id")
	if User_id == 0 {
		User := new(models.User)
		User.LoginName = strings.TrimSpace(self.GetString("login_name"))
		User.RealName = strings.TrimSpace(self.GetString("real_name"))
		User.Phone = strings.TrimSpace(self.GetString("phone"))
		User.Email = strings.TrimSpace(self.GetString("email"))
		User.RoleIds = strings.TrimSpace(self.GetString("roleids"))
		User.UpdateTime = time.Now().Unix()
		User.UpdateId = self.userId
		User.Status = 1

		// // 检查登录名是否已经存在
		// _, err := models.AdminGetByName(Admin.LoginName)

		// if err == nil {
		// 	self.ajaxMsg("登录名已经存在", MSG_ERR)
		// }
		//新增
		pwd, salt := libs.Password(4, "")
		User.Password = pwd
		User.Salt = salt
		User.CreateTime = time.Now().Unix()
		User.CreateId = self.userId
		if _, err := models.UserAdd(User); err != nil {
			self.ajaxMsg(err.Error(), MSG_ERR)
		}
		self.ajaxMsg("", MSG_OK)
	}
}


func (self *UserController) Get() {
	// var (
	// 	sSql   string
	// 	err    error
	// )

// 	var users []User
//     orm.Debug = true //打开查询日志
//     o := orm.NewOrm()
//     o.Using("default") // 默认使用 default，你可以指定为其他数据库
//     //查询 以于大数据量不知道性能怎样？
//     sSql = "SELECT Id, Name FROM User "
//     num, err := o.Raw(sSql).QueryRows(&users)
//     if err == nil && num > 0 {
//         for i, _ := range users {
//             fmt.Println(users[i].Name)
//         }
//     }


	
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
	result, count := models.UserGetList(page, self.pageSize, filters...)
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
	beego.Controller
}

func (c *ProjectSignupController) Get() {
	// c.Data["Website"] = "beego.me"
	// c.Data["Email"] = "astaxie@gmail.com"
	// c.TplName = "index.tpl"
	// c.Ctx.WriteString("hello world.")

	// 数据
	c.Data["Website"] = "58同城"

	// 模板
	c.TplName = "ProjectSignupServlet.tpl"
}

