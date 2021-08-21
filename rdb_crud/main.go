package main

import (
	"github.com/sarulabs/di/v2"
	"github.com/sirupsen/logrus"
	"github.com/spf13/viper"
	rdb "github.com/theNullP0inter/gly_gorm"
	googly_logrus "github.com/theNullP0inter/gly_logrus"
	"github.com/theNullP0inter/googly"
	"github.com/theNullP0inter/googly-example/rdb_crud/accounts"
	"github.com/theNullP0inter/googly-example/rdb_crud/consts"
	"github.com/theNullP0inter/googly/ingress"
	mysql "gorm.io/driver/mysql"
)

var INSTALLED_APPS = []googly.App{
	&accounts.AccountsApp{},
}

type MainGooglyRunner struct{}

func (a *MainGooglyRunner) Inject(builder *di.Builder) {
	builder.Add(di.Def{
		Name: consts.Logger,
		Build: func(ctn di.Container) (interface{}, error) {
			l := googly_logrus.NewGooglyLogrusLogger()
			l.SetLevel(logrus.DebugLevel)
			return l, nil
		},
	})

	builder.Add(di.Def{
		Name: consts.Rdb,
		Build: func(ctn di.Container) (interface{}, error) {
			dbUrl := viper.GetString("RDB_URL")
			db := rdb.NewRdb(mysql.Open(dbUrl))
			return db, nil
		},
	})
}

func (a *MainGooglyRunner) GetIngressPoints(cnt di.Container) []ingress.Ingress {
	return []ingress.Ingress{
		NewMainGinIngress(cnt, 8080),
		NewMainMigrationIngress(cnt),
	}

}

func main() {
	g := &googly.Googly{GooglyRunner: &MainGooglyRunner{}, InstalledApps: INSTALLED_APPS}
	googly.Run(g)
}
