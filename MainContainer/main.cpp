#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QFontDatabase>
#include <QQmlContext>
#include <QQmlComponent>

#include <QLocale>
#include <QTranslator>

#include "SunckUtils.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QTranslator translator;
    const QStringList uiLanguages = QLocale::system().uiLanguages();
    for (const QString &locale : uiLanguages) {
        const QString baseName = "MainContainer_" + QLocale(locale).name();
        if (translator.load(":/i18n/" + baseName)) {
            app.installTranslator(&translator);
            break;
        }
    }

    QFontDatabase fontDatabase;
    if (fontDatabase.addApplicationFont(":/fonts/iconfont.ttf") == -1) {
        qWarning() << "Failed to load iconfont.ttf";
    }

    SunckUtils sunckUtils;
    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    engine.rootContext()->setContextProperty("SunckUtils", &sunckUtils);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
