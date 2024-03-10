import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {
        anchors.centerIn: parent
        spacing: 2

        MyShape {color: "red"}
        MyShape {color: "green"}
        MyShape {color: "blue"}
    }
}
