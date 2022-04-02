#ifndef SUNCKUTILS_H
#define SUNCKUTILS_H

#include <QObject>
#include <QCursor>

class SunckUtils : public QObject
{
    Q_OBJECT
public:
    explicit SunckUtils(QObject *parent = nullptr);
    Q_INVOKABLE QPointF cursorPos() { return QCursor::pos(); }

signals:

};

#endif // SUNCKUTILS_H
