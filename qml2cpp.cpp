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
    QByteArray ba = in.toLatin1();
    char *expr = ba.data();
    double res;
    qDebug() << "c++: HandleTextField::handleSubmitTextField:" << in;
    res = te_interp(expr, 0);
    qDebug() << res;
    return(QString::number(res));
}
