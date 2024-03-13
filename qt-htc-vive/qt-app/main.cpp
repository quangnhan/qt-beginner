#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "htcvivemanager.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    // Register
    qmlRegisterType<HTCViveManager> ("com.automotive.htcvivemanager", 1, 0, "C_HTCViveManager");

    const QUrl url(u"qrc:/qt-app/Main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
