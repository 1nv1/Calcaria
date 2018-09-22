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
        rows: 5
        columns: 4

        Button {
            id: btnNum7
            text: qsTr("7")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnNum8
            text: qsTr("8")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnNum9
            text: qsTr("9")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnOpExe
            text: qsTr("EXE")
            flat: false
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnNum4
            text: qsTr("4")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnNum5
            text: qsTr("5")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnNum6
            text: qsTr("6")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnOpAc
            text: qsTr("AC")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnNum1
            text: qsTr("1")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnNum2
            text: qsTr("2")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnNum3
            text: qsTr("3")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnOpDel
            text: qsTr("DEL")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnOpAns
            text: qsTr("ANS")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnNum0
            text: qsTr("0")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnNumPoint
            text: qsTr(".")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnOpExp
            text: qsTr("EXP")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnOpPlus
            text: qsTr("+")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnOpMinus
            text: qsTr("-")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnOpMul
            text: qsTr("*")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
        Button {
            id: btnOpDiv
            text: qsTr("/")
            font.pointSize: parent.height / 14
            width: parent.width / 4
            height: parent.height / 5
        }
    }

    Connections {
        target: btnOpExe
        onClicked: txtOutput.text = _qml2cpp.handleSubmitTextDisplay(txtInput.text)
    }
    Connections {
        target: btnNum0
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("0", 1)
    }
    Connections {
        target: btnNum1
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("1", 1)
    }
    Connections {
        target: btnNum2
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("2", 1)
    }
    Connections {
        target: btnNum3
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("3", 1)
    }
    Connections {
        target: btnNum4
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("4", 1)
    }
    Connections {
        target: btnNum5
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("5", 1)
    }
    Connections {
        target: btnNum6
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("6", 1)
    }
    Connections {
        target: btnNum7
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("7", 1)
    }
    Connections {
        target: btnNum8
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("8", 1)
    }
    Connections {
        target: btnNum9
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("9", 1)
    }
    Connections {
        target: btnNumPoint
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation(".", 1)
    }
    Connections {
        target: btnOpMul
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("*", 1)
    }
    Connections {
        target: btnOpDiv
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("/", 1)
    }
    Connections {
        target: btnOpMinus
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("-", 1)
    }
    Connections {
        target: btnOpPlus
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("+", 1)
    }
    Connections {
        target: btnOpDel
        onClicked: txtInput.text = _qml2cpp.removeLastOperatorEquation()
    }
    Connections {
        target: btnOpAc
        onClicked: {
            txtInput.text = ""
            txtOutput.text = ""
            _qml2cpp.removeAllEquation()
        }
    }
}
