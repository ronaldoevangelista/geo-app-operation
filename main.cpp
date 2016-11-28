#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QSettings>
#include <QQuickStyle>
#include <QQuickView>
#include <QQmlEngine>

int main(int argc, char *argv[])
{
    QGuiApplication::setApplicationName("Endor Operation");
    QGuiApplication::setOrganizationName("QtProject");
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QSettings settings;
    QString style = QQuickStyle::name();

    if (!style.isEmpty())
    {
        settings.setValue("style", style);
    }
    else
    {
        QQuickStyle::setStyle(settings.value("style").toString());
    }

    QQmlApplicationEngine engine;
    engine.load(QUrl("qrc:/main.qml"));

    if (engine.rootObjects().isEmpty())
    {
        return -1;
    }

    /**
    QQuickView view;
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    QObject::connect(view.engine(), SIGNAL(quit()), qApp, SLOT(quit()));
    view.setSource(QUrl("qrc:///declarative-camera.qml"));
    view.resize(800, 480);
    view.show();
**/
    return app.exec();
}
