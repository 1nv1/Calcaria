#ifndef QML2CPP_H
#define QML2CPP_H

#include <QObject>
#include <QDebug>
extern "C" {
#include "tinyexpr.h"
}

class Qml2Cpp : public QObject
{
    Q_OBJECT
public:
    explicit Qml2Cpp(QObject *parent = 0);

public slots:
    QString handleSubmitTextDisplay(const QString& in);
};

#endif
