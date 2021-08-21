package accounts

import (
	rdb "github.com/theNullP0inter/gly_gorm"
	"github.com/theNullP0inter/googly/logger"
	"gorm.io/gorm"
)

type AccountResourceManagerInterface interface {
	rdb.RdbResourceManager
}

type AccountResourceManager struct {
	*rdb.BaseRdbResourceManager
}

func NewAccountResourceManager(db *gorm.DB, logger logger.GooglyLoggerInterface) AccountResourceManagerInterface {
	var model Account
	queryBuilder := rdb.NewBasePaginatedRdbListQueryBuilder(db, logger)
	rm := rdb.NewRdbResourceManager(db, logger, model, queryBuilder)
	return &AccountResourceManager{rm}
}
