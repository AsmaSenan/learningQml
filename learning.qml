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
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 30
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.color: "black"

        }
    }
    MyRadioButton{
        id: radioButton
        width: 140
        text: "It is Radio"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: textEdit.bottom
        anchors.topMargin: 30
    }
    MyCheckBox{
        id:checkBox
//        text: "It is Checkbox"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: radioButton.bottom
        anchors.topMargin: 30

    }
}
