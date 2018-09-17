import QtQuick 2.11
import QtQuick.Controls 2.4

Page {
    width: 600
    height: 400

    Grid {
        id: grid
        spacing: 2
        layoutDirection: Qt.LeftToRight
        flow: Grid.LeftToRight
        anchors.rightMargin: 2
        anchors.leftMargin: 2
        anchors.bottomMargin: 2
        anchors.topMargin: 2
        anchors.fill: parent
        rows: 4
        columns: 5

        Button {
            id: btnNum7
            text: qsTr("7")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnNum8
            text: qsTr("8")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnNum9
            text: qsTr("9")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpDel
            text: qsTr("DEL")
            font.pointSize: parent.height / 14
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpAc
            text: qsTr("AC")
            font.pointSize: parent.height / 14
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnNum4
            text: qsTr("4")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnNum5
            text: qsTr("5")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnNum6
            text: qsTr("6")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpMul
            text: qsTr("x")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpDiv
            text: qsTr("/")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }

        Button {
            id: btnNum1
            text: qsTr("1")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnNum2
            text: qsTr("2")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnNum3
            text: qsTr("3")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpPlus
            text: qsTr("+")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpMinus
            text: qsTr("-")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnNum0
            text: qsTr("0")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnNumPoint
            text: qsTr(".")
            font.pointSize: parent.height / 8
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpExp
            text: qsTr("EXP")
            font.pointSize: parent.height / 14
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpAns
            text: qsTr("ANS")
            font.pointSize: parent.height / 14
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpExe
            text: qsTr("EXE")
            flat: false
            font.pointSize: parent.height / 14
            width: parent.width / 5
            height: parent.height / 4
        }
    }

    Connections {
        target: btnNum0
        onClicked: txtDisplay.text = txtDisplay.text + "0"
    }
    Connections {
        target: btnNum1
        onClicked: txtDisplay.text = txtDisplay.text + "1"
    }
    Connections {
        target: btnNum2
        onClicked: txtDisplay.text = txtDisplay.text + "2"
    }
    Connections {
        target: btnNum3
        onClicked: txtDisplay.text = txtDisplay.text + "3"
    }
    Connections {
        target: btnNum4
        onClicked: txtDisplay.text = txtDisplay.text + "4"
    }
    Connections {
        target: btnNum5
        onClicked: txtDisplay.text = txtDisplay.text + "5"
    }
    Connections {
        target: btnNum6
        onClicked: txtDisplay.text = txtDisplay.text + "6"
    }
    Connections {
        target: btnNum7
        onClicked: txtDisplay.text = txtDisplay.text + "7"
    }
    Connections {
        target: btnNum8
        onClicked: txtDisplay.text = txtDisplay.text + "8"
    }
    Connections {
        target: btnNum9
        onClicked: txtDisplay.text = txtDisplay.text + "9"
    }
    Connections {
        target: btnOpDel
        onClicked: txtDisplay.text = txtDisplay.text.substring(0, txtDisplay.text.length-1)
    }
}
