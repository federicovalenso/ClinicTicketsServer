#-------------------------------------------------
#
# Project created by QtCreator 2018-02-15T10:00:00
#
#-------------------------------------------------

QT += core sql network

TARGET = ClinicTicketsServer
TEMPLATE = app

QMAKE_CXXFLAGS_RELEASE += -O2
CONFIG += c++1z

SOURCES += main.cpp\
    controllers/ticketcountercontroller.cpp \
    requestmapper.cpp \
    controllers/modelcontroller.cpp \
    routing/route.cpp \
    routing/router.cpp \
    routing/routekey.cpp \
    database.cpp \
    models/model.cpp \
    controllers/ticketcontroller.cpp \
    models/ticketmodel.cpp \
    models/ticketactionmodel.cpp \
    models/usermodel.cpp \
    controllers/usercontroller.cpp \
    controllers/API/apiticketcontroller.cpp \
    validators/rules/validationrule.cpp \
    validators/rules/idrule.cpp \
    validators/rules/windowrule.cpp \
    validators/rules/boolrule.cpp \
    validators/rules/emptyvaluerule.cpp \
    validators/rules/intrule.cpp \
    serversettings.cpp \
    databasemigrator.cpp

HEADERS  += requestmapper.h \
    controllers/ticketcountercontroller.h \
    database.h \
    controllers/modelcontroller.h \
    routing/route.h \
    routing/router.h \
    routing/routekey.h \
    models/model.h \
    controllers/ticketcontroller.h \
    models/ticketmodel.h \
    models/ticketactionmodel.h \
    models/usermodel.h \
    controllers/usercontroller.h \
    entities/ticket.h \
    entities/ticketaction.h \
    entities/entity.h \
    entities/user.h \
    controllers/API/apiticketcontroller.h \
    ticketcounter.h \
    validators/rules/validationrule.h \
    validators/rules/idrule.h \
    validators/rules/ifrule.h \
    validators/rules/windowrule.h \
    validators/rules/boolrule.h \
    validators/rules/emptyvaluerule.h \
    validators/rules/intrule.h \
    serversettings.h \
    databasemigrator.h

OTHER_FILES += etc/* etc/docroot/* etc/templates/* etc/ssl/* logs/* etc/migrations/*

include(logging/logging.pri)
include(httpserver/httpserver.pri)
include(templateengine/templateengine.pri)

RESOURCES += \
    migrations.qrc

DISTFILES += \
    rules
