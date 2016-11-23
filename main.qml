import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.settings 1.0
import QtGraphicalEffects 1.0


ApplicationWindow {
    id: window
    width: 800
    height: 520
    visible: true
    title: "Endor Operation"

    Settings {
        id: settings
        property string style: "Universal"
    }

    header: ToolBar {

        Material.foreground: "transparent"
        RowLayout {
            spacing: 2
            anchors.fill: parent   

            ToolButton {
                   contentItem: Image {
                    fillMode: Image.Pad
                    anchors.margins: 2
                    horizontalAlignment: Image.AlignHCenter
                    verticalAlignment: Image.AlignVCenter
                    source: "qrc:/images/drawer.png"
                }
            } 
            Item { Layout.fillWidth: true }
            ToolButton {
                   id: buttonfile
                   contentItem: Image {
                    fillMode: Image.Pad
                    anchors.margins: 2
                    horizontalAlignment: Image.AlignHCenter
                    verticalAlignment: Image.AlignVCenter
                    source: "qrc:/images/file.png"
                    sourceSize: Qt.size(32, 32) 
                }
                background: Rectangle {
                    implicitWidth: 60
                    implicitHeight:40
                    color: buttonfile.down ? "#d6d6d6" : "transparent"
                    radius: 4
                }
            } 


            ToolButton {
                    id: buttonchecked
                    contentItem: Image {
                    fillMode: Image.Pad
                    anchors.margins: 2
                    horizontalAlignment: Image.AlignHCenter
                    verticalAlignment: Image.AlignVCenter
                    source: "qrc:/images/checked.png"
                    sourceSize: Qt.size(32, 32) 
                }
                background: Rectangle {
                    implicitWidth: 60
                    implicitHeight:40
                    color: buttonchecked.down ? "#d6d6d6" : "transparent"
                    radius: 4
                }
            } 

            ToolButton {
                id: buttonsett
                contentItem: Image {
                    id: videocam
                    fillMode: Image.Pad
                    horizontalAlignment: Image.AlignHCenter
                    verticalAlignment: Image.AlignVCenter
                    source: "qrc:/images/settings-drawio.png"
                    Layout.alignment: Qt.AlignRight
                    sourceSize: Qt.size(32, 32) 
                }
                background: Rectangle {
                    implicitWidth: 60
                    implicitHeight:40
                    color: buttonsett.down ? "#d6d6d6" : "transparent"
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

    StackView {
        id: stackView
        anchors.fill: parent

        initialItem: Pane {
            id: pane
        
        }
    }
}  