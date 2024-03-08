import QtQuick

// Parent and children relationships

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: name
        source: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"
        width: 150
        height: 100
        x: 100
        y: 100
        z: 10

        Rectangle {
            anchors.centerIn: parent
            width: 100
            height: 100
            color: inputHandler.pressed ? "red" : "blue"

            TapHandler{
                id: inputHandler
            }
        }
    }
}
