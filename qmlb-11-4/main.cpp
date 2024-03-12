#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QQmlContext>
#include "test.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // Register a type in QML
    qmlRegisterType<Test> ("com.company.test", 1, 0, "TestQML");

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/qmlb-11-4/Main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
