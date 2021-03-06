package models

import (
	"net/url"

	"github.com/astaxie/beego"
	// "github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
	"github.com/astaxie/beego/orm"
)


// 初始化mysql数据库
func Init() {
	dbhost := beego.AppConfig.String("db.host")
    dbport := beego.AppConfig.String("db.port")
    dbuser := beego.AppConfig.String("db.user")
    dbpassword := beego.AppConfig.String("db.password")
    dbname :=beego.AppConfig.String("db.name")
	timezone := beego.AppConfig.String("db.timezone")

    if dbport == "" {
    	dbport = "3306"
    }

    dsn := dbuser + ":" +dbpassword +"@tcp("+dbhost+":"+dbport+")/"+dbname+"?charset=utf8"

    if timezone != "" {
    	dsn = dsn + "&loc=" + url.QueryEscape(timezone)
    }

    orm.RegisterDataBase("default", "mysql", dsn)
    // 注册model模型
	orm.RegisterModel(new(Admin))
	orm.RegisterModel(new(Damao))
	orm.RegisterModel(new(DamaoCategory))
	orm.RegisterModel(new(DamaoType))
	orm.RegisterModel(new(Batch))
    //调用 RunCommand 执行 orm 命令。
    orm.RunCommand()

    //orm.SetMaxIdleConns("default", 5000)
    //orm.SetMaxOpenConns("default", 5000)

    db, _ := orm.GetDB("default")
    db.SetConnMaxLifetime(360)    
   

    if beego.AppConfig.String("runmode") == "dev" {
    	// 开启 ORM 调试模式
		orm.Debug = true
		// 自动建表
		orm.RunSyncdb("default", false, true)
	}
}


func TableName(name string) string {
	return beego.AppConfig.String("db.prefix") + name
}
