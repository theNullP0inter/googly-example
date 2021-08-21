package main

import (
	"github.com/sarulabs/di/v2"
	"github.com/spf13/viper"
	googly_logrus "github.com/theNullP0inter/gly_logrus"
	mongo_db "github.com/theNullP0inter/gly_mongo"
	"github.com/theNullP0inter/googly"
	"github.com/theNullP0inter/googly-example/mongo_crud/accounts"
	"github.com/theNullP0inter/googly-example/mongo_crud/consts"
	"github.com/theNullP0inter/googly/ingress"
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
			return l, nil
		},
	})

	builder.Add(di.Def{
		Name: consts.MongoDb,
		Build: func(ctn di.Container) (interface{}, error) {
			dbUrl := viper.GetString("MONGO_URL")
			dbName := viper.GetString("MONGO_DB_NAME")
			db := mongo_db.NewMongoDatabase(dbUrl, dbName)
			return db, nil
		},
	})
}

func (a *MainGooglyRunner) GetIngressPoints(cnt di.Container) []ingress.Ingress {
	return []ingress.Ingress{
		NewMainGinIngress(cnt, 8080),
	}

}

func main() {
	g := &googly.Googly{GooglyRunner: &MainGooglyRunner{}, InstalledApps: INSTALLED_APPS}

	googly.Run(g)

}
