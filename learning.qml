import QtQuick 2.15
import QtQuick.Window 2.15
import "imports/controls"
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MouseArea{
        anchors.fill: parent
        onClicked: {
            console.log("U clicked the outside", textEdit.text)
        }
    }

    TextEdit{
        id: textEdit
        height: 40
        width: 140
        anchors.centerIn: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.color: "black"

        }
    }
    MyRadioButton{
        width: 150
        text: "It is Radio"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: textEdit.bottom
        anchors.topMargin: 30
    }
}
