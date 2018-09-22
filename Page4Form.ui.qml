import QtQuick 2.11
import QtQuick.Controls 2.4

Page {
    width: 600
    height: 400
    Label {
        width: 206
        height: 39
        text: qsTr("Very Simple Calculator nelson.lombardo@gmail.com")
        anchors.verticalCenterOffset: 1
        anchors.horizontalCenterOffset: 0
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WordWrap
        anchors.centerIn: parent
    }
}
