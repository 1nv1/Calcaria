import QtQuick 2.11
import QtQuick.Controls 2.4

ApplicationWindow {
    id: root
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
            height: 323
        }
        Page2Form {
        }
    }

    TextInput {
        id: txtInput
        x: 0
        y: 0
        width: parent.width
        height: 74
        color: "#005f72"
        text: qsTr("")
        horizontalAlignment: Text.AlignRight
        wrapMode: Text.Wrap
        font.pixelSize: Math.round(height * 0.4)
        MouseArea {
            anchors.fill: parent
            // Avoid android keyboard
            onClicked: {
                forceActiveFocus(Qt.MouseFocusReason);
                Qt.inputMethod.hide();
            }   // onClicked
        }   // MouseArea
    }

    TextInput {
        id: txtOutput
        x: 0
        y: 75
        width: parent.width
        height: 74
        color: "#005f72"
        text: qsTr("")
        horizontalAlignment: Text.AlignRight
        wrapMode: Text.Wrap
        font.pixelSize: Math.round(height * 0.8)
        MouseArea {
            anchors.fill: parent
            // Avoid android keyboard
            onClicked: {
                forceActiveFocus(Qt.MouseFocusReason);
                Qt.inputMethod.hide();
            }   // onClicked
        }   // MouseArea
    }

    footer: TabBar {
        id: tabBar
        height: 1
        currentIndex: swipeView.currentIndex
    }
}
