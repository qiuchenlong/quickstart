package models

import (
	"github.com/astaxie/beego/orm"
	"fmt"
)

type Damao struct {
	// 索引
	Id          int
	// 名称
	Name        string
	// 描述
	Description string
	// 图片
	Image       string
	// URL
	Url         string
	// 添加时间
	CreateTime  int64
	// 更新时间
	UpdateTime  int64

	// 分类
	TypeId      int
	// 类别
	CategoryId  int

}

const TABLE_NAME string = "tb_damao"

// 表名
func (d *Damao) TableName() string {
	return TableName(TABLE_NAME)
}

// 添加
func DamaoAdd(d *Damao) (int64, error) {
	return orm.NewOrm().Insert(d)
}

// 查询
func DamaoGetList(page, pageSize int, filters ...interface{}) ([]*Damao, int64) {
	offset := (page - 1) * pageSize
	list := make([]*Damao, 0)
	query := orm.NewOrm().QueryTable(TableName(TABLE_NAME))
	//if len(filters) > 0 {
	//	l := len(filters)
	//	for k := 0; k < l; k += 2 {
	//		query = query.Filter(filters[k].(string), filters[k + 1])
	//	}
	//}

	if len(filters) > 0 {
		l := len(filters)
		for k := 0; k < l; k += 1 {
			map1 := filters[k].(map[string]string)
			for k, v := range map1 {
				fmt.Println(k)
				fmt.Println(v)
				if k == "TypeId" {
					query = query.Filter(k , v)
				} else {
					query = query.Filter(k + "__icontains", v)
				}
			}
		}
	}
	total, _ := query.Count()
	query.OrderBy("-id").Limit(pageSize, offset).All(&list)

	return list, total;
}


// 按分类查询
//func DamaoGetListByCategory(page, pageSize , pageType int, filters ...interface{}) ([]*Damao, int64) {
//	offset := (page - 1) * pageSize
//	list := make([]*Damao, 0)
//	query := orm.NewOrm().QueryTable(TableName(TABLE_NAME))
//	if len(filters) > 0 {
//		l := len(filters)
//		for k := 0; k < l; k += 2 {
//			query = query.Filter(filters[k].(string), filters[k + 1])
//		}
//	}
//	total, _ := query.Count()
//	query.OrderBy("-id").Limit(pageSize, offset).All(&list)
//
//	return list, total;
//}