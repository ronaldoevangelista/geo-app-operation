import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.settings 1.0
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2


import "./Components" as CustomItems

ApplicationWindow {

    id: window
    y: Screen.desktopAvailableHeight
    x: Screen.desktopAvailableWidth

    Component.onCompleted: console.log(" x = " + window.x +  " Y = " +  window.y )

    width: 1024
    height: 680
    visible: true
    title: "Endor Operation"

    header: CustomItems.ToolBarDefault {
        Material.foreground: "black"
        width: window.width - 25
    }

    footer: CustomItems.StatusBarMainEndor {}

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Pane {
            id: pane
            CameraUI{
                CustomItems.ToolBarMainEndor{
                    width: window.width - 25

                }
             }
        }
    }
}