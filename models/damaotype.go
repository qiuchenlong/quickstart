package models

import "github.com/astaxie/beego/orm"

type DamaoType struct {
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

const TABLE_NAME_DAMAO_Type string = "tb_damao_type"

// 表名
func (d *DamaoType) TableName() string {
	return TableName(TABLE_NAME_DAMAO_Type)
}

// 添加
func DamaoTypeAdd(d *DamaoType) (int64, error) {
	return orm.NewOrm().Insert(d)
}

// 查询
func DamaoTypeGetList(page, pageSize int, filters ...interface{}) ([]*DamaoType, int64) {
	offset := (page - 1) * pageSize
	list := make([]*DamaoType, 0)
	query := orm.NewOrm().QueryTable(TableName(TABLE_NAME_DAMAO_Type))
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