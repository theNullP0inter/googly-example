package main

import (
	"database/sql"

	"github.com/golang-migrate/migrate/v4/database/mysql"
	"github.com/sarulabs/di/v2"
	"github.com/spf13/viper"
	rdb "github.com/theNullP0inter/gly_gorm"
)

func NewMainMigrationIngress(cnt di.Container) *rdb.MigrationIngress {
	// Migrations
	db, err := sql.Open("mysql", viper.GetString("RDB_URL"))
	if err != nil {
		panic(err)
	}
	driver, err := mysql.WithInstance(db, &mysql.Config{})
	if err != nil {
		panic(err)
	}
	return rdb.NewMigrationIngress(
		"migrate",
		"/migrations",
		driver,
	)
}
