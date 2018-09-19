#include "qml2cpp.h"

/*
 * This class handles interactions with the text field
 */
Qml2Cpp::Qml2Cpp(QObject *parent) :
    QObject(parent)
{
}

QString Qml2Cpp::handleSubmitTextDisplay(const QString &in)
{
    int err;
    QByteArray ba = in.toLatin1();
    char *expr = ba.data();
    double res;
    res = te_interp(expr, &err);
    return(QString::number(res));
}
