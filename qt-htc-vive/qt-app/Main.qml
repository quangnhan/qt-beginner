import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

import com.automotive.htcvivemanager 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    C_HTCViveManager{
        id: htcViveManagerObject

        onStarted: {
            lblStatus.text = "Start"
        }

        onStopped: {
            lblStatus.text = "End"
        }

        onProgress: {
            progressBar.value = htcViveManagerObject.eyeTrackingData / 100
        }
    }

    Column {
        id: column
        width: 434
        height: 62
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 10

        Label {
            id: lblStatus
            text: "----"
        }

        ProgressBar {
            id: progressBar
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            value: 0
        }

        Row {
            id: row
            width: 200
            height: 400
            spacing: 10

            Button {
                id: btnStart
                text: qsTr("Start")
                onClicked: htcViveManagerObject.start()
            }

            Button {
                id: btnEnd
                text: qsTr("End")
                onClicked: htcViveManagerObject.stop()
            }
        }
    }
}
