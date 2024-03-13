#ifndef HTCVIVEMANAGER_H
#define HTCVIVEMANAGER_H

#include <QObject>
#include <QTimer>
#include <QDebug>

class HTCViveManager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int eyeTrackingData READ getValue NOTIFY progress FINAL)

public:
    explicit HTCViveManager(QObject *parent = nullptr);

    int getValue();

private:
    QTimer timer;
    int value;
    void receiveHardwareValue();

signals:
    void started();
    void stopped();
    void progress();

public slots:
    void start();
    void stop();
};

#endif // HTCVIVEMANAGER_H
