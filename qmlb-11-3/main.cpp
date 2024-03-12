#include <QGuiApplication>
#include <QQmlApplicationEngine>


#include <QQmlContext>
#include <QDebug>
#include "test.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    Test test;
    engine.rootContext()->setContextProperty("testing", &test);

    const QUrl url(u"qrc:/qmlb-11-3/Main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
