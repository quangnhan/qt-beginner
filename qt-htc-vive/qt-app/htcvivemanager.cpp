#include "htcvivemanager.h"

HTCViveManager::HTCViveManager(QObject *parent)
    : QObject{parent}
{
    timer.setInterval(50);
    connect(&timer, &QTimer::timeout, this, &HTCViveManager::receiveHardwareValue);
}

int HTCViveManager::getValue() {
    return value;
}

void HTCViveManager::start()
{
    value = 0;
    timer.start();

    qInfo() << "HTCViveManager start:" << value;
    emit started();
}

void HTCViveManager::stop()
{
    timer.stop();

    qInfo() << "HTCViveManager stop:" << value;
    emit stopped();
}

void HTCViveManager::receiveHardwareValue()
{
    value += 1;

    qInfo() << "HTCViveManager receiveValue:" << value;
    emit progress();
    if(value > 99){
        stop();
    }
}
