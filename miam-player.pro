TEMPLATE = subdirs

CONFIG += ordered warn_on qt debug_and_release

SUBDIRS += src/core \
    src/acoustid \
    src/cover-fetcher \
    src/library \
    src/tabplaylists \
    src/uniquelibrary \
    src/plugins \
    src/player

RESOURCES += src/player/mp.qrc \
    src/tabplaylists/mp.qrc
