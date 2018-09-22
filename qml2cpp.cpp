#include "qml2cpp.h"

/*
 * This class handles interactions with the text field
 */
Qml2Cpp::Qml2Cpp(QObject *parent) :
    QObject(parent)
{
    int j;
    for(j = 0; j < 256; j++) {
        this->eqLenOp[j] = 0;
    }
    this->eqLen = 0;
    this->eqStr = "";
}

QString Qml2Cpp::handleSubmitTextDisplay(const QString &in)
{
    int err;
    QByteArray ba = in.toLatin1();
    char *expr = ba.data();
    double res;
    if(strcmp(expr, "") != 0) {
        res = te_interp(expr, &err);
        return(QString::number(res));
    } else {
        return(QString::fromUtf8(""));
    }
}

QString Qml2Cpp::trackingStringEquation(const QString& in, short len)
{
    // Concatenate strings
    this->eqStr = this->eqStr + in;
    // Add the longitud of every operator
    this->eqLenOp[this->eqLen] = len;
    this->eqLen++;
    return(this->eqStr);
}

QString Qml2Cpp::removeLastOperatorEquation()
{
    if(this->eqLenOp[0]) {
        this->eqStr.chop(this->eqLenOp[this->eqLen-1]);
        eqLenOp[this->eqLen] = 0;
        if(this->eqLen) { this->eqLen --; }
    }
    return(this->eqStr);
}

void Qml2Cpp::removeAllEquation()
{
    int j;
    for(j = 0; j < 256; j++) {
        this->eqLenOp[j] = 0;
    }
    this->eqLen = 0;
    this->eqStr = "";
}
