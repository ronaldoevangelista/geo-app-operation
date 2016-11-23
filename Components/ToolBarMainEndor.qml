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
            id: compassbutton
            contentItem: Image {
                fillMode: Image.Pad
                anchors.margins: 2
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter
                antialiasing: true
                source: compassbutton.pressed ? "qrc:/images/32/compass_32x_black.png": "qrc:/images/32/compass_32x_blue.png"
                Layout.alignment: Qt.AlignRight
                sourceSize: Qt.size(32, 32) 
                }
                background: Rectangle {
                    implicitWidth: 60
                    implicitHeight:40
                    color: compassbutton.down ? "transparent" : "transparent"
                    radius: 4
                }
        }

        ToolButton {
            id: flashlightbutton
            contentItem: Image {
                fillMode: Image.Pad
                anchors.margins: 2
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter
                antialiasing: true
                source: flashlightbutton.pressed ? "qrc:/images/32/flashlight_32x_black.png": "qrc:/images/32/flashlight_32x_blue.png"
                Layout.alignment: Qt.AlignRight
                sourceSize: Qt.size(32, 32) 
                }
                background: Rectangle {
                    implicitWidth: 60
                    implicitHeight:40
                    color: flashlightbutton.down ? "transparent" : "transparent"
                    radius: 4
                }
        }

        ToolButton {
            id: lidarbutton
            contentItem: Image {
                fillMode: Image.Pad
                anchors.margins: 2
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter
                antialiasing: true
                source: lidarbutton.pressed ? "qrc:/images/32/wifi_32x_black.png": "qrc:/images/32/wifi_32x_blue.png"
                Layout.alignment: Qt.AlignRight
                sourceSize: Qt.size(32, 32) 
                }
                background: Rectangle {
                    implicitWidth: 60
                    implicitHeight:40
                    color: lidarbutton.down ? "transparent" : "transparent"
                    radius: 4
                }
        }

        ToolButton {
            id: placholderbutton
            contentItem: Image {
                fillMode: Image.Pad
                anchors.margins: 2
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter
                antialiasing: true
                source: placholderbutton.pressed ? "qrc:/images/32/placeholder_32x_black.png": "qrc:/images/32/placeholder_32x_blue.png"
                Layout.alignment: Qt.AlignRight
                sourceSize: Qt.size(32, 32) 
                }
                background: Rectangle {
                    implicitWidth: 60
                    implicitHeight:40
                    color: placholderbutton.down ? "transparent" : "transparent"
                    radius: 4
                }
        }

        ToolButton {
            id: camerabutton
            contentItem: Image {
                fillMode: Image.Pad
                anchors.margins: 2
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter
                antialiasing: true
                source: camerabutton.pressed ? "qrc:/images/32/video_camera_32x_black.png": "qrc:/images/32/video_camera_32x_blue.png"
                Layout.alignment: Qt.AlignRight
                sourceSize: Qt.size(32, 32) 
                }
                background: Rectangle {
                    implicitWidth: 60
                    implicitHeight:40
                    color: camerabutton.down ? "transparent" : "transparent"
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
                antialiasing: true
                source: settingsbutton.pressed ? "qrc:/images/32/battery_32x_black.png": "qrc:/images/32/battery_32x_blue.png"
                Layout.alignment: Qt.AlignRight
                sourceSize: Qt.size(32, 32) 
            }
            background: Rectangle {
                    implicitWidth: 60
                    implicitHeight:40
                    color: settingsbutton.down ? "transparent" : "transparent"
                    radius: 4
            }
            onClicked: optionsMenu.open()

            Menu {
                id: optionsMenu
                x: parent.width - width

                transformOrigin: Menu.TopRight
                    MenuItem {
                        text: "Settings"
                    }
                    MenuItem {
                        text: "About"
                    }
            }
        }
    }
}