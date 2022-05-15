QT       += core gui network
QT += core gui charts

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    com_send.cpp \
    demodulation.cpp \
    main.cpp \
    mainwindow.cpp \
    qextserialbase.cpp \
    udp_recv.cpp \
    wave_widget.cpp \
    win_qextserialport.cpp \
    writetofiles.cpp

HEADERS += \
    CirQueue.h \
    com_send.h \
    demodulation.h \
    mainwindow.h \
    qextserialbase.h \
    udp_recv.h \
    wave_widget.h \
    win_qextserialport.h \
    writetofiles.h

FORMS += \
    mainwindow.ui \
    wave_widget.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


LIBS += -lws2_32