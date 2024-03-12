#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QQmlContext>
#include "test.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    // Add to the root context
    Test test;
    engine.rootContext()->setContextProperty("testing", &test);

    const QUrl url(u"qrc:/qmlb-11-2/Main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
