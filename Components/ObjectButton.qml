

import QtQuick 2.0
import QtQuick.Controls 2.0

ToolButton {

    id: custonButton

    width:32
    height:32

    property string sourceimgOnpress
    property string sourceimgpress    
    property string namecolor: "transparent"
    property string labelToolTip
    signal clicked

    contentItem:Image {
        id: buttonImage
        fillMode:Image.Pad
        anchors.margins:2
        horizontalAlignment:Image.AlignHCenter
        verticalAlignment:Image.AlignVCenter
        source: custonButton.pressed ? sourceimgOnpress :  sourceimgpress
        sourceSize:Qt.size(custonButton.width, custonButton.height)
    }
    background:Rectangle {
        implicitWidth: 40
        implicitHeight:40
        color:custonButton.down ? namecolor : namecolor
        radius:4
    }
    hoverEnabled: true

    ToolTip.delay: 1000
    ToolTip.timeout: 5000
    ToolTip.visible: hovered
    ToolTip.text: labelToolTip

    MouseArea {
        id: mouseRegion
        anchors.fill: buttonImage
        onClicked: { custonButton.clicked(); }
    }
}
