module github.com/theNullP0inter/googly-example/mongo_crud

go 1.16

require (
	github.com/gin-gonic/gin v1.7.4
	github.com/go-stack/stack v1.8.1 // indirect
	github.com/golang/snappy v0.0.4 // indirect
	github.com/klauspost/compress v1.13.4 // indirect
	github.com/sarulabs/di/v2 v2.4.2
	github.com/spf13/viper v1.8.1
	github.com/theNullP0inter/gly_gin v0.0.0-20210819160919-49addf973184
	github.com/theNullP0inter/gly_logrus v0.0.0-20210819161318-8c7c92ea293e
	github.com/theNullP0inter/gly_mongo v0.0.0-20210821075813-3a65610d90ad
	github.com/theNullP0inter/googly v0.0.0-20210821074943-ca8e0520a722
	github.com/youmark/pkcs8 v0.0.0-20201027041543-1326539a0a0a // indirect
	go.mongodb.org/mongo-driver v1.7.1
	golang.org/x/crypto v0.0.0-20210817164053-32db794688a5 // indirect
)

replace github.com/theNullP0inter/googly-example/mongo_crud/consts => ./consts

replace github.com/theNullP0inter/googly-example/mongo_crud/accounts => ./accounts
