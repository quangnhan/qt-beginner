#include "test.h"
#include <QObject>
#include <QDebug>

Test::Test(QObject *parent)
    : QObject{parent}
{}

int Test::number()
{
    qInfo() << "Called number()";
    return 42;
}

void Test::bark()
{
    qInfo() << "Bark Bark Bark";
}
