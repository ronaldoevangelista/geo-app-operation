import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.settings 1.0
import QtGraphicalEffects 1.0

ToolBar {

    background: Rectangle {
        color: "transparent"
        Rectangle {
            width: parent.width
            height: 1
            anchors.bottom: parent.bottom
            color: "transparent"
            border.color: "transparent"
        }
    }

    RowLayout {
        id: toolbarRow
        spacing: 2
        anchors.fill: parent
        Item { Layout.fillWidth: true }

        ToolButton {
                id: connectbutton
                contentItem: Image {
                    fillMode: Image.Pad
                    anchors.margins: 2
                    horizontalAlignment: Image.AlignHCenter
                    verticalAlignment: Image.AlignVCenter
                    source: connectbutton.pressed ? "qrc:/images/toolbar_default_32x/folder_32x_blue.png": "qrc:/images/toolbar_default_32x/folder_32x_black.png"
                    sourceSize: Qt.size(32, 32) 
                 }
                background: Rectangle {
                    implicitWidth: 40
                    implicitHeight:40
                    color: connectbutton.down ? "transparent" : "transparent"
                    radius: 4
                }     
        } 
        ToolButton {
                id: startbutton
                contentItem: Image {
                    fillMode: Image.Pad
                    anchors.margins: 2
                    horizontalAlignment: Image.AlignHCenter
                    verticalAlignment: Image.AlignVCenter
                    source: startbutton.pressed ? "qrc:/images/toolbar_default_32x/play-button_32x_blue.png": "qrc:/images/toolbar_default_32x/play-button_32x_black.png"
                    sourceSize: Qt.size(32, 32) 
                 }
                background: Rectangle {
                    implicitWidth: 40
                    implicitHeight:40
                    color: startbutton.down ? "transparent" : "transparent"
                    radius: 4
                }     
        } 
        ToolButton {
                id: filebutton
                contentItem: Image {
                    fillMode: Image.Pad
                    anchors.margins: 2
                    horizontalAlignment: Image.AlignHCenter
                    verticalAlignment: Image.AlignVCenter
                    source: filebutton.pressed ? "qrc:/images/toolbar_default_32x/interface-1_32x_blue.png": "qrc:/images/toolbar_default_32x/interface-1_32x_black.png"
                    sourceSize: Qt.size(32, 32) 
                 }
                background: Rectangle {
                    implicitWidth: 40
                    implicitHeight:40
                    color: filebutton.down ? "transparent" : "transparent"
                    radius: 4
                }     
        } 
        ToolButton {
                   id: checkedbutton
                   contentItem: Image {
                        fillMode: Image.Pad
                        anchors.margins: 2
                        horizontalAlignment: Image.AlignHCenter
                        verticalAlignment: Image.AlignVCenter
                        source: checkedbutton.pressed ? "qrc:/images/toolbar_default_32x/check-square_32x_blue.png": "qrc:/images/toolbar_default_32x/check-square_32x_black.png"
                        sourceSize: Qt.size(32, 32) 
                    }
                background: Rectangle {
                    implicitWidth: 40
                    implicitHeight:40
                    color: checkedbutton.down ? "transparent" : "transparent"
                    radius: 4
                }
        }
        ToolButton {
                   id: settingsbutton
                   contentItem: Image {
                        fillMode: Image.Pad
                        anchors.margins: 2
                        horizontalAlignment: Image.AlignHCenter
                        verticalAlignment: Image.AlignVCenter
                        source: settingsbutton.pressed ? "qrc:/images/toolbar_default_32x/tools-1_32x_blue.png": "qrc:/images/toolbar_default_32x/tools-1_32x_black.png"
                        sourceSize: Qt.size(32, 32) 
                    }
                background: Rectangle {
                    implicitWidth: 40
                    implicitHeight:40
                    color: settingsbutton.down ? "transparent" : "transparent"
                    radius: 4
                }
        }
    }
}