import QtQuick

Item {
    id: root
    property color color: "gray"
    property string text: ""

    width: 100
    height: 100

    Rectangle {
        color: root.color
        anchors.fill: parent

        Text {
            id: name
            text: root.text
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            drag.target: root.parent
            onClicked: root.z++
        }
    }
}


