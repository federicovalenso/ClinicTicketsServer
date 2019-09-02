#include "model.h"
#include <QDebug>
#include <stdexcept>
#include "database.h"

const QString Model::ID_COL = "id";
const QString Model::CREATED_AT_COL = "created_at";
const QString Model::UPDATED_AT_COL = "updated_at";
const QByteArray Model::ID_COL_PARAM = ID_COL.toUtf8();

Model::Model(const QString &owner)
    : kConnectionName(Database::initConnection(owner)) {
  columns_.insert(Model::ID_COL);
  columns_.insert(Model::CREATED_AT_COL);
  columns_.insert(Model::UPDATED_AT_COL);
}
