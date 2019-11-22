package models

import (
	"fmt"
	"time"
	//"strconv"
	"database/sql"
)

type Batch struct {
	// 索引
	Id          int
	// 名称
	Name        string
	// 描述
	Description string


}


// 表名
func (d *Batch) TableName() string {
	return TableName("tb_batch")
}

type MySQLDriver struct {

}

func BatchInsert() (int64) {

	db, err := sql.Open("mysql", "root:123456@tcp(localhost:3306)/test_db?charset=utf8")
	fmt.Println(err)

	//execstring := "INSERT INTO db_tb_batch (id, name, description)VALUES"
	execstring := "INSERT INTO db_tb_batch (name, description)VALUES"
	data := ""

	fmt.Println(time.Now().Unix())
	for i := 0; i < 1; i++ {
		for j := i * 10; j < i*10+50000; j++ {
			if j < i*10+49999 {
				//id := strconv.Itoa(j)
				//onedata := "(" + id + ", '0', '20180103002930'), "
				onedata := "('0', '20180103002930'), "
				data = data + onedata
			} else {
				//id := strconv.Itoa(j)
				//onedata := "(" + id + ",'0', '20180103002930')"
				onedata := "('0', '20180103002930')"
				data = data + onedata
			}
		}

		//fmt.Println(execstring + data)
		_, err := db.Exec(execstring + data)
		if err != nil {
			fmt.Println(err)
			return 0
		}
	}
	fmt.Println(time.Now().Unix())

	return 1
}



