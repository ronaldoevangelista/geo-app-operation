import QtQuick 2.6
import QtQuick.Controls 2.0

TabBar {

    background: Rectangle {
        color: "#eee"
        Rectangle {
                anchors.top: parent.bottom
                width: parent.width
                height: 1
                color: "#999"
            }
    }
}