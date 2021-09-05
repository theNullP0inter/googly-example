module github.com/theNullP0inter/googly-example/rdb_crud

go 1.13

require (
	github.com/gin-gonic/gin v1.7.4
	github.com/go-playground/validator/v10 v10.9.0 // indirect
	github.com/golang-migrate/migrate/v4 v4.14.1
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-multierror v1.1.1 // indirect
	github.com/lib/pq v1.10.3 // indirect
	github.com/sarulabs/di/v2 v2.4.2
	github.com/sirupsen/logrus v1.8.1
	github.com/spf13/viper v1.8.1
	github.com/theNullP0inter/gly_gin v0.0.0-20210904095710-c40902033cb1
	github.com/theNullP0inter/gly_gorm v0.0.0-20210901142126-5193aa6bdda7
	github.com/theNullP0inter/gly_logrus v0.0.0-20210822132453-0440392fce0e
	github.com/theNullP0inter/googly v0.0.0-20210903065451-dd33020fc6f9
	golang.org/x/crypto v0.0.0-20210817164053-32db794688a5 // indirect
	golang.org/x/sys v0.0.0-20210903071746-97244b99971b // indirect
	gopkg.in/ini.v1 v1.62.1 // indirect
	gorm.io/driver/mysql v1.1.2
	gorm.io/gorm v1.21.14
)

replace github.com/theNullP0inter/googly-example/rdb_crud/accounts => ./accounts

replace github.com/theNullP0inter/googly-example/rdb_crud/consts => ./consts
