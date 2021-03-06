#/* This file is part of tcpview - network connections viewer for Linux
# * Copyright (C) 2017 chipmunk-sm <dannico@linuxmail.org>
# *
# * This program is free software: you can redistribute it and/or modify
# * it under the terms of the GNU General Public License as published by
# * the Free Software Foundation, either version 3 of the License, or
# * (at your option) any later version.
# *
# * This program is distributed in the hope that it will be useful,
# * but WITHOUT ANY WARRANTY; without even the implied warranty of
# * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# * GNU General Public License for more details.
# *
# * You should have received a copy of the GNU General Public License
# * along with this program.  If not, see <http://www.gnu.org/licenses/>.
# */

QT += core gui

CONFIG += c++11

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

LIBS += -luuid

TARGET = tcpview
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    source/buffer.cpp \
    source/datasource.cpp \
    source/rootmodule.cpp \
    source/cconnectionstree.cpp \
    source/ccustomproxymodel.cpp \
    source/ccfontsize.cpp \
    source/cfilesavewrapper.cpp \
    source/updatethread.cpp \
    source/cportservicenames.cpp \
    source/cusername.cpp \
    source/clanguage.cpp

HEADERS  += mainwindow.h \
    source/buffer.h \
    source/datasource.h \
    source/rootmodule.h \
    source/cconnectionstree.h \
    source/tableheadercaption.h \
    source/ccustomproxymodel.h \
    source/ccfontsize.h \
    source/cfilesavewrapper.h \
    source/updatethread.h \
    source/cportservicenames.h \
    source/cusername.h \
    source/clanguage.h

FORMS    += mainwindow.ui

DISTFILES += \
    data/tcpview.svg \
    data/tcpviewb.svg \
    data/tcpvieww.svg \
    data/tcpview.desktop \
    debian/compat \
    debian/control \
    debian/copyright \
    debian/tcpview.install \
    debian/changelog \
    debian/rules \
    debian/source/format \
    README.md \
    LICENSE

RESOURCES += \
    tcpview.qrc


# lupdate -no-obsolete -verbose -pro tcpview.pro

# cd translations

# linguist language_en.ts language_cs.ts language_de.ts language_fr.ts language_ja.ts language_pl.ts language_ru.ts language_sl.ts language_zh_CN.ts language_zh_TW.ts

# cd ..

# lrelease -removeidentical -compress tcpview.pro

TRANSLATIONS += \
    translations/language_en.ts \
    translations/language_cs.ts \
    translations/language_de.ts \
    translations/language_fr.ts \
    translations/language_ja.ts \
    translations/language_pl.ts \
    translations/language_ru.ts \
    translations/language_sl.ts \
    translations/language_zh_CN.ts \
    translations/language_zh_TW.ts
