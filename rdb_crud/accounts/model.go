package accounts

import rdb "github.com/theNullP0inter/gly_gorm"

type Account struct {
	rdb.RdbSoftDeleteBaseModel
	Username string `gorm:"unique" json:"username"`
}
