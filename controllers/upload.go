package controllers

import (
	"path"
	"crypto/md5"
	"time"
	"fmt"
	"math/rand"
	"os"
    // "strconv"
    "strings"

    "quickstart/models"
)

type UploadController struct {
	BaseController
}

func (self *UploadController) Upload(){
    self.displayTpl()
}

func (this *UploadController) Upfile(){

    fmt.Sprintf("request...")

    f, h, _ := this.GetFile("myfile")//获取上传的文件
    ext := path.Ext(h.Filename)
    //验证后缀名是否符合要求
    var AllowExtMap map[string]bool = map[string]bool{
        ".jpg":true,
        ".JPG":true,
        ".jpeg":true,
        ".png":true,
        
        ".mov":true,
        ".mp4":true,
    }
    if _,ok:=AllowExtMap[ext];!ok{
        this.Ctx.WriteString( "后缀名不符合上传要求" )
        return 
    }
    //创建目录
    uploadDir := "static/upload/" + time.Now().Format("2006/01/02/")
    err := os.MkdirAll( uploadDir , os.ModePerm)
    if err != nil {
        this.Ctx.WriteString( fmt.Sprintf("%v",err) )
        return 
    }
    //构造文件名称
    rand.Seed(time.Now().UnixNano())
    randNum := fmt.Sprintf("%d", rand.Intn(9999)+1000 )
    hashName := md5.Sum( []byte( time.Now().Format("2006_01_02_15_04_05_") + randNum ) )

    fileName := fmt.Sprintf("%x",hashName) + ext
    //this.Ctx.WriteString(  fileName )

    //fmt.Println("upload file begin ", time.Now())

    fpath := uploadDir + fileName
    defer f.Close()//关闭上传的文件，不然的话会出现临时文件不能清除的情况
    err = this.SaveToFile("myfile", fpath)
    if err != nil {
        this.Ctx.WriteString( fmt.Sprintf("%v",err) )
    }

    fmt.Println(fpath)

    //fmt.Println("upload file end ", time.Now())

    // timeTemplate := "2006-01-02 15:04:05" //常规类型
    // stamp, _ := time.ParseInLocation(timeTemplate, time.Now().Format(timeTemplate), time.Local)
    timestamp := time.Now().Unix()



    // insert database
    Entry := new(models.Damao)
    // 索引
    // Entry.Id          int
    // 名称
    Entry.Name        = strings.TrimSpace(this.GetString("name"))
    // 描述
    Entry.Description = strings.TrimSpace(this.GetString("description"))
    // 图片
    Entry.Image       = strings.TrimSpace(this.GetString("image"))
    // URL
    Entry.Url         = "http://www.qiuchenlong.top:8081/" + fpath
    // 添加时间
    Entry.CreateTime  = timestamp
    // 更新时间
    Entry.UpdateTime  = timestamp

    // 分类
    Entry.TypeId      = 1
    // 类别
    Entry.CategoryId  = 1


    if _, err := models.DamaoAdd(Entry); err != nil {
        this.Ctx.WriteString( fmt.Sprintf("%v",err) )
    }

    //fmt.Println(Entry)


    this.Ctx.WriteString( "上传成功~！！！！！！！" )
}
