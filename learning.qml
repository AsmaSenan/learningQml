import QtQuick 2.1
import QtQuick.Window 2.15
import QtQuick.Controls 2.2
import Qt5Compat.GraphicalEffects

import controls 1.0

ApplicationWindow {
    width: 595
    height: 842
    visible: true
    title: qsTr("QML Course")

    ListModel{
        id: listModel
        ListElement {url: "sheets/WidgetsSheet.qml"; text: "Basic Widgets"}
        ListElement {url: "sheets/GridViewSheet.qml"; text: "Grid View"}
        ListElement {url: "sheets/ListViewSheet.qml"; text: "List View"}
        ListElement {url: "sheets/PathViewSheet.qml"; text: "Path View"}
    }

    header: Item{
        width: parent.width
        height:30
        Rectangle{
            id: pageHeader
            anchors.fill: parent
            color: "white"
        }
        DropShadow{
            anchors.fill: pageHeader
            //            horizontalOffset: 3
            verticalOffset: 3
            radius: 8.0
            color: "#80000000"
            source: pageHeader

        }

        Text {
            text: listModel.get(listView.currentIndex).text
            anchors.centerIn: parent
        }
    }

    contentData: Item{
        anchors.fill: parent

        Rectangle{
            width: 185
            height: parent.height
            color: "#00D1A9"

            ListView {
                id: listView
                anchors.fill: parent
                anchors.topMargin: 50
                model:listModel
                interactive: false
                spacing: 10
                highlight: Item{
                    width: parent.width
                    height: 47
                    Rectangle{
                        anchors.fill: parent
                        color: "#D1DBE1"
                        opacity: 0.6
                    }
                    Rectangle{
                        width: 4
                        height: parent.height
                        color: "#fff"
                    }
                }
                delegate : Item{
                    width: parent.width
                    height: 47
                    Text{
                        anchors.centerIn: parent
                        color:"white"
                        text: model.text
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            listView.currentIndex = index;
                            stackView.push(Qt.resolvedUrl(model.url));
                        }
                    }
                }
            }
        }
        StackView{
            id: stackView
            width: parent.width - listView.width
            height: parent.height
            anchors.right: parent.right
            initialItem: Qt.resolvedUrl("sheets/WidgetsSheet.qml")
        }
    }

}
