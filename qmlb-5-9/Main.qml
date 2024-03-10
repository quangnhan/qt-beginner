import QtQuick

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property color bgColor: "#5A6263"
    property color buttonColor: "green"
    property color hoverColor: "limegreen"
    property color clickColor: "yellow"
    property int size : 100

    Rectangle {
        id: background
        color: root.buttonColor
        width: 100
        height: parent.height

        Column {
            id: column
            anchors.fill: parent

            HoverButton {
                width: 100
                height: 50
                title.text: "Cat"
                color: root.buttonColor
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                area.onPressed: image.source = "qrc:/cat.jpg"
            }

            HoverButton {
                width: 100
                height: 50
                title.text: "Dog"
                color: root.buttonColor
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                area.onPressed: image.source = "qrc:/dog.jpg"
            }

            HoverButton {
                width: 100
                height: 50
                title.text: "Fish"
                color: root.buttonColor
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                area.onPressed: image.source = "qrc:/fish.jpg"
            }
        }
    }

    Rectangle {
        id: rectanle
        color: root.bgColor
        x: 100
        y: 0
        width: parent.width - x
        height: parent.height

        Image {
            id: image
            anchors.margins: 25
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "qrc:/logo.png"
        }
    }
}
