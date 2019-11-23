/*
* @Module: 大猫
* @Author: 邱晨龙
* @Date:   2019-06-02
*/
package controllers

import (
	"quickstart/models"
	"fmt"
	"strings"
)

type DamaoController struct {
	BaseController
}

func (self *DamaoController) Damao() {
	// 分类
	ctype, err := self.GetInt("type")
	if err != nil {
		ctype = 1
	}
	// 类型
	category, err := self.GetInt("category")
	if err != nil {
		category = 1
	}
	// 列表
	page, err := self.GetInt("page")
	if err != nil {
		page = 1
	}
	// 没页的大小
	limit, err := self.GetInt("limit")
	if err != nil {
		limit = 30
	}
	if limit > 30 {
		limit = 30
	}
	self.pageSize = limit

	// 查询名字
	searchword := self.GetString("searchword")

	// 查询条件
	filters := make([]interface{}, 1)
	map1 := make(map[string]string)
	//map1["Id"] = "1"
	map1["Name"] = searchword

	if ctype > 0 {
		//map1["TypeId"] = strconv.Itoa(ctype)
	}


	filters[0] = map1
	filters = append(filters)
	result, count := models.DamaoGetList(page, self.pageSize, filters...)
	list := make([]map[string]interface{}, len(result))

	for k, v := range result {
		row := make(map[string]interface{})
		row["id"] = v.Id
		row["name"] = v.Name
		row["description"] = v.Description
		row["image"] = v.Image
		row["create_time"] = v.CreateTime
		row["update_time"] = v.UpdateTime

		row["url"] = v.Url

		if strings.Contains(v.Url, "rtmp") ||
			strings.Contains(v.Url, ".mp4") ||
			strings.Contains(v.Url, ".m3u8") {
		//https://www.qiuchenlong.top/
			row["url"] = "/damaodetail/detail?playurl=" + v.Url + "&name=" + v.Name
		}
		list[k] = row
	}

	fmt.Println(count, list)

	//pages := []struct{
	//	Num int
	//}{}
	//{}, {}, {}


	pages := pageEditor(self.pageSize, page)

	types := getType()
	categorys := getCategory()




	self.Data["Website"] = "爱播"

	self.Data["Type"] = ctype
	self.Data["Types"] = types

	self.Data["SearchWord"] = searchword
	fmt.Println(searchword)

	self.Data["Category"] = category
	self.Data["Categorys"] = categorys

	self.Data["Page"] = page
	if page > 1 {
		self.Data["PageFront"] = page - 1
	} else {
		self.Data["PageFront"] = 1
	}
	self.Data["PageNext"] = page + 1
	self.Data["PageSize"] = pages
	self.Data["List"] = list
	//c.TplName = "damao.html"
	self.displayTpl()
}


// 获取类别
func getType() []map[string]interface{} {
	result, tpyeCount := models.DamaoTypeGetList(0, 10)
	fmt.Println(result, tpyeCount)

	list := make([]map[string]interface{}, len(result))
	for k, v := range result {
		row := make(map[string]interface{})
		row["id"] = v.Id
		row["name"] = v.Name
		row["type"] = v.Type
		list[k] = row
	}
	arrayReverse(list)
	return list
}


// 获取分类
func getCategory() []map[string]interface{} {
	result, categoryCount := models.DamaoCategoryGetList(0, 10)
	fmt.Println(result, categoryCount)

	list := make([]map[string]interface{}, len(result))
	for k, v := range result {
		row := make(map[string]interface{})
		row["id"] = v.Id
		row["name"] = v.Name
		row["category"] = v.Type
		list[k] = row
	}
	arrayReverse(list)
	return list
}


// 数组排序
func arrayReverse(list []map[string]interface{}) {
	for i, j := 0, len(list)-1; i < j; i, j = i + 1, j -1 {
		list[i], list[j] = list[j], list[i]
	}
}











// 直播
func (self *DamaoController) Live() {

	//name := self.GetString("name");
	//playurl := self.GetString("playurl")
	//
	//fmt.Println(playurl)
	//
	//self.Data["Website"] = "爱播"
	//self.Data["Playurl"] = playurl
	//self.Data["Name"] = name
	//self.TplName = "damao/damao_live.tpl"
	//self.TplName = "damao_detail.tpl"

	self.displayTpl()
}

// 福利
func (self *DamaoController) Fuli() {

	//name := self.GetString("name");
	//playurl := self.GetString("playurl")
	//
	//fmt.Println(playurl)
	//
	//self.Data["Website"] = "爱播"
	//self.Data["Playurl"] = playurl
	//self.Data["Name"] = name
	//self.TplName = "damao/damao_live.tpl"
	//self.TplName = "damao_detail.tpl"

	self.displayTpl()
}


// Vlog
func (self *DamaoController) Vlog() {
	self.displayTpl()
}




//分页处理函数
func pageEditor(pageCount int,pageIndex int) []int{
	var pages []int
	if pageCount<5{
		pages := make([]int,pageCount)
		for i:=1;i<=pageCount;i++{
			pages[i-1]=i
		}
	}else if pageIndex<=3{
		pages = make([]int,5)
		for i:=1;i<=5;i++{
			pages[i-1]=i
		}
	}else if pageIndex>=pageCount-2{
		pages = make([]int,5)
		for i:=1;i<=5;i++{
			pages[i-1]=pageCount-5+i
		}
	}else{
		pages = make([]int,5)
		for i:=1;i<=5;i++{
			pages[i-1]=pageIndex-3+i
		}
	}
	return pages
}