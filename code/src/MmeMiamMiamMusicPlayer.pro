QT += widgets multimedia

TagLibDirectory = ./3rdparty/taglib

TEMPLATE = app

QMAKE_CXXFLAGS += -std=c++11

FORMS += \
    customizeoptionsdialog.ui \
    customizetheme.ui \
    mainwindow.ui \
    playlistmanager.ui \
    tagconverter.ui \
    tageditor.ui \
    dragdroppopup.ui \
    quickstart.ui

SOURCES += \
    dialogs/colordialog.cpp \
    dialogs/customizethemedialog.cpp \
    dialogs/customizeoptionsdialog.cpp \
    dialogs/dragdropdialog.cpp \
    dialogs/playlistmanager.cpp \
    dialogs/reflector.cpp \
    dialogs/shortcutlineedit.cpp \
    dialogs/shortcutwidget.cpp \
    dialogs/stylesheetupdater.cpp \
    filesystem/addressbar.cpp \
    filesystem/addressbarbutton.cpp \
    filesystem/addressbarmenu.cpp \
    filesystem/filesystemtreeview.cpp \
    library/libraryfilterlineedit.cpp \
    library/libraryfilterproxymodel.cpp \
    library/libraryitem.cpp \
    library/libraryitemdelegate.cpp \
    library/librarymodel.cpp \
    library/librarytreeview.cpp \
    library/musicsearchengine.cpp \
    tageditor/albumcover.cpp \
    tageditor/cover.cpp \
    tageditor/tagconverter.cpp \
    tageditor/tageditor.cpp \
    tageditor/tageditortablewidget.cpp \
    circleprogressbar.cpp \
    filehelper.cpp \
    main.cpp \
    mainwindow.cpp \
    mediabutton.cpp \
    playlist.cpp \
    settings.cpp \
    stareditor.cpp \
    starrating.cpp \
    tabbar.cpp \
    tabplaylist.cpp \
    tracksnotfoundmessagebox.cpp \
    treeview.cpp \
    playlistmodel.cpp \
    columnutils.cpp \
    quickstart.cpp

HEADERS += \
    dialogs/colordialog.h \
    dialogs/customizethemedialog.h \
    dialogs/customizeoptionsdialog.h \
    dialogs/dragdropdialog.h \
    dialogs/playlistmanager.h \
    dialogs/reflector.h \
    dialogs/shortcutlineedit.h \
    dialogs/shortcutwidget.h \
    dialogs/stylesheetupdater.h \
    filesystem/addressbar.h \
    filesystem/addressbarbutton.h \
    filesystem/addressbarmenu.h \
    filesystem/filesystemtreeview.h \
    library/libraryfilterlineedit.h \
    library/libraryfilterproxymodel.h \
    library/libraryitem.h \
    library/libraryitemdelegate.h \
    library/librarymodel.h \
    library/librarytreeview.h \
    library/musicsearchengine.h \
    tageditor/albumcover.h \
    tageditor/cover.h \
    tageditor/tagconverter.h \
    tageditor/tageditor.h \
    tageditor/tageditortablewidget.h \
    circleprogressbar.h \
    filehelper.h \
    mainwindow.h \
    mediabutton.h \
    nofocusitemdelegate.h \
    playlist.h \
    settings.h \
    starrating.h \
    stareditor.h \
    tabbar.h \
    tabplaylist.h \
    tracksnotfoundmessagebox.h \
    treeview.h \
    playlistmodel.h \
    columnutils.h \
    quickstart.h

OTHER_FILES += \
    stylesheets/qscrollbar.qss \
    stylesheets/librarytreeview.qss \
    stylesheets/qslider.qss \
    stylesheets/tageditor.qss \
    stylesheets/playlist.qss


TRANSLATIONS = translations/m4p_ar.ts \
    translations/m4p_de.ts \
    translations/m4p_en.ts \
    translations/m4p_es.ts \
    translations/m4p_fr.ts \
    translations/m4p_it.ts \
    translations/m4p_ja.ts \
    translations/m4p_kr.ts \
    translations/m4p_pt.ts \
    translations/m4p_ru.ts \
    translations/m4p_th.ts \
    translations/m4p_vn.ts \
    translations/m4p_zh.ts

RESOURCES += \
    mmmmp.qrc

win32 {
    RC_FILE += config/mmmmp.rc
    OTHER_FILES += config/mmmmp.rc
}

CONFIG(debug, debug|release) {
    LIBS += -Ldebug -llibtag
    OBJECTS_DIR = debug/.obj
    MOC_DIR = debug/.moc
    RCC_DIR = debug/.rcc
}

CONFIG(release, debug|release) {
    LIBS += -Lrelease -llibtag
    OBJECTS_DIR = release/.obj
    MOC_DIR = release/.moc
    RCC_DIR = release/.rcc
}

INCLUDEPATH += $$TagLibDirectory \
    $$TagLibDirectory/include
