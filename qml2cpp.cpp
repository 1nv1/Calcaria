#include "qml2cpp.h"

/*
 * This class handles interactions with the text field
 */
Qml2Cpp::Qml2Cpp(QObject *parent) :
    QObject(parent)
{
}

void Qml2Cpp::handleSubmitTextDisplay(const QString &in)
{
    qDebug() << "c++: HandleTextField::handleSubmitTextField:" << in;
}
