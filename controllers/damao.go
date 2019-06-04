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

type DamaoController struct {
	BaseController
}

func (self *DamaoController) Damao() {
	category, err := self.GetInt("category")
	if err != nil {
		category = 1
	}
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

	// 查询条件
	filters := make([]interface{}, 0)
	filters = append(filters)
	result, count := models.DamaoGetList(page, self.pageSize, filters...)
	list := make([]map[string]interface{}, len(result))

	for k, v := range result {
		row := make(map[string]interface{})
		row["id"] = v.Id
		row["name"] = v.Name
		row["description"] = v.Description
		row["image"] = v.Image
		row["url"] = v.Url
		list[k] = row
	}

	fmt.Println(count, list)

	//pages := []struct{
	//	Num int
	//}{}
	//{}, {}, {}


	pages := pageEditor(self.pageSize, page)

	categorys := getCategory()




	self.Data["Website"] = "爱播"

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


// 获取分类
func getCategory() []map[string]interface{} {
	result, categoryCount := models.DamaoCategoryGetList(0, 10)
	fmt.Println(result, categoryCount)

	list := make([]map[string]interface{}, len(result))
	for k, v := range result {
		row := make(map[string]interface{})
		row["id"] = v.Id
		row["name"] = v.Name
		row["type"] = v.Type
		list[k] = row
	}
	//for i, j := 0, len(list)-1; i < j; i, j = i + 1, j -1 {
	//	list[i], list[j] = list[j], list[i]
	//}
	return list
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