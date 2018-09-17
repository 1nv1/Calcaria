import QtQuick 2.11
import QtQuick.Controls 2.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    color: "#d3d7cf"
    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 155
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
        }

        Page2Form {
        }
    }

    TextInput {
        id: txtDisplay
        x: 0
        y: 0
        width: parent.width
        height: 150
        color: "#005f72"
        text: qsTr("")
        horizontalAlignment: Text.AlignRight
        font.pixelSize: height / 2
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            height: 40
            text: qsTr("Basic")
            font.pixelSize: 24
        }
        TabButton {
            height: 40
            text: qsTr("Extended")
            font.pixelSize: 24
        }
    }
}
