QT          += core gui multimedia network sql widgets

TEMPLATE    = lib
include(chromaprint/chromaprint.pri)

DEFINES += MIAMACOUSTID_LIBRARY

SOURCES += \
    acoustid.cpp \
    matchingrecordswidget.cpp \
    mbrelease.cpp \
    qchromaprint.cpp \
    requestpool.cpp

HEADERS += \
    #chromaprint/debug.h \
    acoustid.h \
    matchingrecordswidget.h \
    mbrelease.h \
    qchromaprint.h \
    requestpool.h

FORMS += matchingrecords.ui

CONFIG  += dll c++11

CONFIG(debug, debug|release) {
    win32 {
        LIBS += -L$$OUT_PWD/../core/debug/ -lmiam-core -lQtAV1 -L$$PWD/../../lib/ -L$$PWD/../../lib/debug/win-x64 -ltag -lchromaprint -lavcodec -lavdevice -lavfilter -lavformat -lavutil -lpostproc -lswresample -lswscale
        QMAKE_POST_LINK=robocopy /IS $$PWD/lib/debug $$OUT_PWD/../../player/debug
    }
    OBJECTS_DIR = release/.obj
    MOC_DIR = release/.moc
    RCC_DIR = release/.rcc
    UI_DIR = $$PWD
}

CONFIG(release, debug|release) {
    win32 {
        LIBS += -L$$OUT_PWD/../core/release -lmiam-core -lQtAV1 -L$$PWD/../../lib/ -L$$PWD/../../lib/release/win-x64 -ltag -lchromaprint -lavcodec -lavdevice -lavfilter -lavformat -lavutil -lpostproc -lswresample -lswscale
        QMAKE_POST_LINK=robocopy /IS $$PWD/lib/release $$OUT_PWD/../../player/release
    }
    OBJECTS_DIR = release/.obj
    MOC_DIR = release/.moc
    RCC_DIR = release/.rcc
    UI_DIR = $$PWD
}

TARGET      = miam-acoustid

!macx {
    LIBS += -L$$OUT_PWD/../core/ -lmiam-core
}
macx {
    QMAKE_SONAME_PREFIX = @executable_path/../Frameworks
    QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.9
}

INCLUDEPATH += chromaprint
DEPENDPATH += chromaprint

INCLUDEPATH += $$PWD/../core/ $$PWD/../core/3rdparty/ $$PWD/../core/3rdparty/QtAV/
DEPENDPATH += $$PWD/../core $$PWD/../core/3rdparty $$PWD/../core/3rdparty/QtAV

RESOURCES += resources.qrc
