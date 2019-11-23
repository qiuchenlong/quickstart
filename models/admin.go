package models

import (
	"github.com/astaxie/beego/orm"
)

type Admin struct {
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

func (a *Admin) TableName() string {
	return TableName("tb_admin")
}

func AdminAdd(a *Admin) (int64, error) {
	return orm.NewOrm().Insert(a)
}

func AdminGetByName(loginName string) (*Admin, error) {
	a := new(Admin)
	err := orm.NewOrm().QueryTable(TableName("tb_admin")).Filter("login_name", loginName).One(a)
	if err != nil {
		return nil, err
	}
	return a, nil
}

// query
func AdminGetList(page, pageSize int, filters ...interface{}) ([]*Admin, int64) {
	offset := (page - 1) * pageSize
	list := make([]*Admin, 0)
	query := orm.NewOrm().QueryTable(TableName("tb_admin"))
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


func (a *Admin) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(a, fields...); err != nil {
		return err
	}
	return nil
}


