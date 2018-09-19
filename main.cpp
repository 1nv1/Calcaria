#include <QGuiApplication>
#include <QQmlApplicationEngine>
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

    QObject *item = engine.rootObjects().first();

    // connect our QML signal to our C++ slot
    QObject::connect(item,
                     SIGNAL(submitTextDisplay(QString)),
                     &qml2cpp,
                     SLOT(handleSubmitTextDisplay(QString))
                     );
    return app.exec();
}
