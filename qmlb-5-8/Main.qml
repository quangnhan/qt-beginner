import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        anchors.centerIn: parent
        width: 300
        height: 400
        color: "red"

        Rectangle {
            width: 100
            height: 100
            color: "yellow"

            anchors.margins: 50
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 15

        }
    }
}
