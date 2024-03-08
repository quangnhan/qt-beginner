import QtQuick

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
        opacity: 0.25
        anchors.centerIn: parent
    }

    TextInput{
        id: myInput
        text: "Hello world"
        anchors.centerIn: parent
        font.pixelSize: 25
    }

    Text {
        id: myText
        text: myInput.text
        font.pixelSize: 25
    }
}
