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
        this->ansLenOp[j] = 0;
    }
    this->eqLen = 0;
    this->ansLen = 0;
    this->eqStr = "";
    this->ansStr = "";
}

QString Qml2Cpp::handleSubmitTextDisplay(const QString &in)
{
    int err;
    QByteArray ba = in.toLatin1();
    char *expr = ba.data();
    double res;
    if(strcmp(expr, "") != 0) {
        res = te_interp(expr, &err);
        if(!err) {
            // Not error
            this->cpyCur2Last();
            return(QString::number(res));
        } else {
            // Error
            return("Error");
        }
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

void Qml2Cpp::cpyCur2Last()
{
    int j;
    for(j = 0; j < 256; j++) {
        this->ansLenOp[j] = this->eqLenOp[j];
    }
    this->ansLen = this->eqLen;
    this->ansStr = this->eqStr;
}

void Qml2Cpp::cpyLast2Cur()
{
    int j;
    for(j = 0; j < 256; j++) {
        this->eqLenOp[j] = this->ansLenOp[j];
    }
    this->eqLen = this->ansLen;
    this->eqStr = this->ansStr;
}

QString Qml2Cpp::putLastEquation()
{
    this->cpyLast2Cur();
    return(this->ansStr);
}
