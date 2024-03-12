#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "machine.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // Register a type in QML
    qmlRegisterType<Machine> ("com.company.machine", 1, 0, "Machine");

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/qmlb-11-5/Main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
