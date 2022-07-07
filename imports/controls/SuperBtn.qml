import QtQuick 2.6
import Qt5Compat.GraphicalEffects

Item {
    id: superBtn
    width: 140
    height: 50

    property bool checked: false

    Rectangle{
        anchors.fill: parent
        color: "#5a4bad"
        radius: 3

        Text {
            id: textBtn
            anchors.verticalCenter: parent.verticalCenter
            leftPadding: 20
            text: qsTr("Save")
            color: "#ffffff"
            font.bold: true
            font.pointSize: 12
        }
        Image {
            id: buttonImage
            width: 30
            height: 30
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 20
            source: "assets/save.png"
            visible: superBtn.checked
            ColorOverlay {
                anchors.fill: buttonImage
                source: buttonImage
                color: "#ffffff"
                visible: superBtn.checked
            }
        }

    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            superBtn.checked = true;
        }
    }
}
