import QtQuick


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: myItem
        anchors.centerIn: parent
        color: "red"
        width: 200
        height: 200
        visible: true

        border.color: "#000000"
        border.width: 5

        // Make it become circle
        radius: width

        gradient: Gradient {
            GradientStop {
                position: 0.0;
                color: "green"
            }
            GradientStop {
                position: 1.0;
                color: "blue"
            }
        }
    }
}
