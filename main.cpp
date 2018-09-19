#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "qml2cpp.h"

int main(int argc, char *argv[])
{
    Qml2Cpp qml2cpp;

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    if (engine.rootObjects().isEmpty())
        return -1;

    engine.rootContext()->setContextProperty("_qml2cpp", &qml2cpp);

    return app.exec();
}
