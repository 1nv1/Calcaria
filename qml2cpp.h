#ifndef QML2CPP_H
#define QML2CPP_H

#include <QObject>
extern "C" {
#include "tinyexpr.h"
}

class Qml2Cpp : public QObject
{
    Q_OBJECT
private:
    QString eqStr;
    QString ansStr;
    short eqLenOp[256];
    short ansLenOp[256];
    short eqLen;
    short ansLen;
    void cpyCur2Last();
    void cpyLast2Cur();
public:
    explicit Qml2Cpp(QObject *parent = nullptr);
public slots:
    QString handleSubmitTextDisplay(const QString& in);
    QString trackingStringEquation(const QString& in, short len);
    QString removeLastOperatorEquation();
    void removeAllEquation();
    QString putLastEquation();
};

#endif
