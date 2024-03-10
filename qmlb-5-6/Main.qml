import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        color: "pink"
        anchors.centerIn: parent
        width: 300
        height: 400

        clip: true

        Flow {
            anchors.centerIn: parent
            flow: Flow.LeftToRight
            spacing: 5


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
}
