module github.com/theNullP0inter/googly-example/mongo_crud

go 1.13

require (
	github.com/gin-gonic/gin v1.7.4
	github.com/sarulabs/di/v2 v2.4.2
	github.com/spf13/viper v1.8.1
	github.com/theNullP0inter/gly_gin v0.0.0-20210819160919-49addf973184
	github.com/theNullP0inter/gly_gorm v0.0.0-20210820135157-91a228d785cd
	github.com/theNullP0inter/gly_logrus v0.0.0-20210819161318-8c7c92ea293e
	github.com/theNullP0inter/gly_mongo v0.0.0-20210821065109-3a4d36332bb9
	github.com/theNullP0inter/googly v0.0.0-20210820125037-315445acde35
	go.mongodb.org/mongo-driver v1.7.1
)

replace github.com/theNullP0inter/googly-example/mongo_crud/consts => ./consts

replace github.com/theNullP0inter/googly-example/mongo_crud/accounts => ./accounts
