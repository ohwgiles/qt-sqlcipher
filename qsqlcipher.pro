TARGET		= qsqlcipher
TEMPLATE	= lib
QT			= core sql

CONFIG		+= plugin
DEFINES		+= QT_NO_CAST_TO_ASCII QT_NO_CAST_FROM_ASCII

HEADERS		= $$PWD/qsql_sqlite_p.h
SOURCES		= $$PWD/qsql_sqlite.cpp $$PWD/smain.cpp 
OTHER_FILES = $$PWD/qsqlcipher.json
LIBS		= -lsqlcipher -lcrypto

target.path	= $$[QT_INSTALL_PLUGINS]/sqldrivers
INSTALLS	+= target

