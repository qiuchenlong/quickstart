package models

import "github.com/astaxie/beego/orm"

type DamaoCategory struct {
	// 索引
	Id          int
	// 名称
	Name        string
	// 类型
	Type        int
	// 添加时间
	CreateTime  int64
	// 更新时间
	UpdateTime  int64
}

const TABLE_NAME_DAMAO_CATEGORY string = "tb_damao_category"

// 表名
func (d *DamaoCategory) TableName() string {
	return TableName(TABLE_NAME_DAMAO_CATEGORY)
}

// 添加
func DamaoCategoryAdd(d *DamaoCategory) (int64, error) {
	return orm.NewOrm().Insert(d)
}

// 查询
func DamaoCategoryGetList(page, pageSize int, filters ...interface{}) ([]*DamaoCategory, int64) {
	offset := (page - 1) * pageSize
	list := make([]*DamaoCategory, 0)
	query := orm.NewOrm().QueryTable(TableName(TABLE_NAME_DAMAO_CATEGORY))
	if len(filters) > 0 {
		l := len(filters)
		for k := 0; k < l; k += 2 {
			query = query.Filter(filters[k].(string), filters[k + 1])
		}
	}
	total, _ := query.Count()
	query.OrderBy("-id").Limit(pageSize, offset).All(&list)

	return list, total;
}