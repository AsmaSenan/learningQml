import QtQuick 2.0
import controls 1.0
BaseSheet {
    id: root

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
        onCheckedChanged: {
            console.log("Radio checked")
        }
    }
    MyCheckBox{
        id:checkBox
        //        text: "It is Checkbox"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: radioButton.bottom
        anchors.topMargin: 30
        onCheckedChanged: {
            if(checked)
                console.log("Checkbox checked")
            else
                console.log("Checkbox unchecked")
        }

    }
    MySwitch{
        id: switchBtn
        width: 180
        text: "It's Switch Button"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: checkBox.bottom
        anchors.topMargin: 30
        onCheckedChanged: {
            if(checked)
                console.log("switch Button checked")
            else
                console.log("switch Button unchecked")
        }

    }
    SuperBtn{
        id:superBtn
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: switchBtn.bottom
        anchors.topMargin: 30
    }
    MyButton{
        id: myButton
        text: "Button"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: superBtn.bottom
        anchors.topMargin: 30

    }

}
