TARGET = voicecall-manager
TEMPLATE = app
QT = core dbus
CONFIG += mobility link_pkgconfig

#DEFINES += WANT_TRACE

INCLUDEPATH += ../lib/src
LIBS += -L../lib/src -lvoicecall

PKGCONFIG += libresourceqt1

MOBILITY = multimedia # for basic ringtone plugin.

HEADERS += \
    dbus/voicecallmanagerdbusservice.h \
    basicvoicecallconfigurator.h \
    audiocallpolicyproxy.h \
    voicecallmanager.h \
    basicringtonenotificationprovider.h

SOURCES += \
    dbus/voicecallmanagerdbusservice.cpp \
    basicvoicecallconfigurator.cpp \
    audiocallpolicyproxy.cpp \
    voicecallmanager.cpp \
    main.cpp \
    basicringtonenotificationprovider.cpp

target.path = /usr/bin

INSTALLS += target
