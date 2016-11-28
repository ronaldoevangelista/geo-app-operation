import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.settings 1.0
import QtGraphicalEffects 1.0
import QtMultimedia 5.4

ToolBar {

    background:Rectangle {
        color:"transparent"
        Rectangle {
            width:parent.width
            height:1
            anchors.bottom:parent.bottom
            color:"transparent"
            border.color:"transparent"
        }
    }

    RowLayout {
        id:toolbarRow
        spacing:2
        anchors.fill:parent

        Item {Layout.fillWidth:true }

            ObjectPropertyButton {
                id : wbModesButton
                value: CameraImageProcessing.WhiteBalanceAuto
                model: ListModel {
                    ListElement {
                        icon: "qrc:/images/32/video_camera_32x_black.png"
                        value: CameraImageProcessing.WhiteBalanceAuto
                        text: "Auto"
                    }
                    ListElement {
                        icon: "qrc:/images/camera_white_balance_sunny.png"
                        value: CameraImageProcessing.WhiteBalanceSunlight
                        text: "Sunlight"
                    }
                    ListElement {
                        icon: "qrc:/images/camera_white_balance_cloudy.png"
                        value: CameraImageProcessing.WhiteBalanceCloudy
                        text: "Cloudy"
                    }
                    ListElement {
                        icon: "qrc:/images/camera_white_balance_incandescent.png"
                        value: CameraImageProcessing.WhiteBalanceTungsten
                        text: "Tungsten"
                    }
                    ListElement {
                        icon: "qrc:/images/camera_white_balance_flourescent.png"
                        value: CameraImageProcessing.WhiteBalanceFluorescent
                        text: "Fluorescent"
                    }
                }
                //onValueChanged: captureControls.camera.imageProcessing.whiteBalanceMode = wbModesButton.value
            }


/*

        ObjectButton{
            id:connectbutton
            sourceimgOnpress: "qrc:/images/toolbar_default_32x/folder_32x_blue.png"
            sourceimgpress:"qrc:/images/toolbar_default_32x/folder_32x_black.png"
            labelToolTip: qsTr("Open")
        }
*/
        ObjectButton{
             id:startbutton
            sourceimgOnpress: "qrc:/images/toolbar_default_32x/play-button_32x_blue.png"
            sourceimgpress:"qrc:/images/toolbar_default_32x/play-button_32x_black.png"
            labelToolTip: qsTr("Iniciar")
        }

        ObjectButton{
            id:filebutton
            sourceimgOnpress: "qrc:/images/toolbar_default_32x/interface-1_32x_blue.png"
            sourceimgpress:"qrc:/images/toolbar_default_32x/interface-1_32x_black.png"
            labelToolTip: qsTr("Abrir")
        }

        ObjectButton{
                id:checkedbutton
                sourceimgOnpress: "qrc:/images/toolbar_default_32x/check-square_32x_blue.png"
                sourceimgpress:"qrc:/images/toolbar_default_32x/check-square_32x_black.png"
                labelToolTip: qsTr("Missoes")
            }

        ObjectButton{
            id:settingsbutton
            sourceimgOnpress: "qrc:/images/toolbar_default_32x/tools-1_32x_blue.png"
            sourceimgpress:"qrc:/images/toolbar_default_32x/tools-1_32x_black.png"
            labelToolTip: qsTr("Settings")
        } 
    }
}