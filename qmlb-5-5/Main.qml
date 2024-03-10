
import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Grid {
        anchors.centerIn: parent
        spacing: 5
        rows: 2
        columns: 1

        MyShape { color: "red" }
        MyShape { color: "green" }
        MyShape { color: "blue" }
        MyShape { color: "orange" }
        MyShape { color: "black" }
        MyShape { color: "yellow" }
        MyShape { color: "brown" }
        MyShape { color: "gray" }
        MyShape { color: "teal" }

    }
}
