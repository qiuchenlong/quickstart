package models

import (
	"github.com/astaxie/beego/orm"
)

type User struct {
	// Id         int `orm:"auto"`
	// Name       string
	// Profile_id int
	Id         int
	LoginName  string
	RealName   string
	Password   string
	RoleIds    string
	Phone      string
	Email      string
	Salt       string
	LastLogin  int64
	LastIp     string
	Status     int
	CreateId   int
	UpdateId   int
	CreateTime int64
	UpdateTime int64
}

func (a *User) TableName() string {
	return TableName("tb_user")
}

func UserAdd(a *User) (int64, error) {
	return orm.NewOrm().Insert(a)
}

// query
func UserGetList(page, pageSize int, filters ...interface{}) ([]*User, int64) {
	offset := (page - 1) * pageSize
	list := make([]*User, 0)
	query := orm.NewOrm().QueryTable(TableName("tb_user"))
	if len(filters) > 0 {
		l := len(filters)
		for k := 0; k < l; k += 2 {
			query = query.Filter(filters[k].(string), filters[k+1])
		}
	}
	total, _ := query.Count()
	query.OrderBy("-id").Limit(pageSize, offset).All(&list)

	// total := int64(offset)

	return list, total
}