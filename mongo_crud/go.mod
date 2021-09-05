module github.com/theNullP0inter/googly-example/mongo_crud

go 1.16

require (
	github.com/gin-gonic/gin v1.7.4
	github.com/go-playground/validator/v10 v10.9.0 // indirect
	github.com/go-stack/stack v1.8.1 // indirect
	github.com/golang/snappy v0.0.4 // indirect
	github.com/klauspost/compress v1.13.5 // indirect
	github.com/sarulabs/di/v2 v2.4.2
	github.com/spf13/viper v1.8.1
	github.com/theNullP0inter/gly_gin v0.0.0-20210904095710-c40902033cb1
	github.com/theNullP0inter/gly_logrus v0.0.0-20210822132453-0440392fce0e
	github.com/theNullP0inter/gly_mongo v0.0.0-20210905145120-0895a3632eeb
	github.com/theNullP0inter/googly v0.0.0-20210903065451-dd33020fc6f9
	github.com/youmark/pkcs8 v0.0.0-20201027041543-1326539a0a0a // indirect
	go.mongodb.org/mongo-driver v1.7.2
	golang.org/x/crypto v0.0.0-20210817164053-32db794688a5 // indirect
	golang.org/x/sys v0.0.0-20210903071746-97244b99971b // indirect
	gopkg.in/ini.v1 v1.62.1 // indirect
)

replace github.com/theNullP0inter/googly-example/mongo_crud/consts => ./consts

replace github.com/theNullP0inter/googly-example/mongo_crud/accounts => ./accounts
