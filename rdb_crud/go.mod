module github.com/theNullP0inter/googly-example/rdb_crud

go 1.13

require (
	github.com/gin-gonic/gin v1.7.4
	github.com/go-playground/validator/v10 v10.9.0 // indirect
	github.com/golang-migrate/migrate/v4 v4.14.1
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-multierror v1.1.1 // indirect
	github.com/sarulabs/di/v2 v2.4.2
	github.com/sirupsen/logrus v1.8.1
	github.com/spf13/viper v1.8.1
	github.com/theNullP0inter/gly_gin v0.0.0-20210819160919-49addf973184
	github.com/theNullP0inter/gly_gorm v0.0.0-20210821075536-7dbc2fca9bb6
	github.com/theNullP0inter/gly_logrus v0.0.0-20210819161318-8c7c92ea293e
	github.com/theNullP0inter/googly v0.0.0-20210821074943-ca8e0520a722
	golang.org/x/crypto v0.0.0-20210817164053-32db794688a5 // indirect
	gorm.io/driver/mysql v1.1.2
	gorm.io/gorm v1.21.13
)

replace github.com/theNullP0inter/googly-example/rdb_crud/accounts => ./accounts

replace github.com/theNullP0inter/googly-example/rdb_crud/consts => ./consts
