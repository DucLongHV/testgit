#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{

// #if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
//     QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
// #endif // this is my comment
    QGuiApplication app(argc, argv);
    // I just add a new comment

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    // I just add a second comment

    // I just fix my local
    // I have already fix confict
    return app.exec();

}
