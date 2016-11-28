import QtQuick 2.0
import QtMultimedia 5.0


Item {

    id: propertyButton
    property alias value : popup.currentValue
    property alias model : popup.model

    width:32
    height:32

    BorderImage {
        id: buttonImage
        source: "qrc:/images/custombutton.sci"
        width: propertyButton.width; height: propertyButton.height
    }

    ObjectButton {
        anchors.fill: parent
        Image {
            anchors.centerIn: parent
            source: popup.currentItem.icon
            sourceSize:Qt.size(propertyButton.width, propertyButton.height)
        }
        labelToolTip: qsTr("Open")
        onClicked: popup.toggle()
    }

    ObjectPropertyPopup {
        id: popup
        anchors.right: parent.left
        anchors.rightMargin: 16
        anchors.top: buttonImage.top
        visible: opacity > 0

        anchors.alignWhenCentered : true
        onSelected: popup.toggle()
    }
}