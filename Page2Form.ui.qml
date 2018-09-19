import QtQuick 2.11
import QtQuick.Controls 2.4

Page {
    width: 600
    height: 400
    Grid {
        id: grid2
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
            id: btnOpOpenBracket
            text: qsTr("(")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpCloseBracket
            text: qsTr(")")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpExponentiation2
            text: qsTr("x²")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpExponentiation
            text: qsTr("xⁿ")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpRadication
            text: qsTr("√")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpLogarithm
            text: qsTr("log")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpLogarithmNatural
            text: qsTr("ln")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpExponentiation10
            text: qsTr("10ⁿ")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpExponentiationE
            text: qsTr("eⁿ")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpFac
            text: qsTr("fac")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpSin
            text: qsTr("sin")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpCos
            text: qsTr("cos")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpTan
            text: qsTr("tan")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpAbs
            text: qsTr("abs")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpModulus
            text: qsTr("%")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpAsin
            text: qsTr("asin")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpAcos
            text: qsTr("acos")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnOpAtan
            text: qsTr("atan")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnNumPi
            text: qsTr("π")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
        Button {
            id: btnNumE
            text: qsTr("e")
            font.pointSize: parent.height / 12
            width: parent.width / 5
            height: parent.height / 4
        }
    }

    Connections {
        target: btnOpOpenBracket
        onClicked: txtInput.text = txtInput.text + "("
    }
    Connections {
        target: btnOpCloseBracket
        onClicked: txtInput.text = txtInput.text + ")"
    }
    Connections {
        target: btnOpExponentiation2
        onClicked: txtInput.text = txtInput.text + "^2"
    }
    Connections {
        target: btnOpExponentiation
        onClicked: txtInput.text = txtInput.text + "^"
    }
    Connections {
        target: btnOpRadication
        onClicked: txtInput.text = txtInput.text + "sqrt("
    }
    Connections {
        target: btnOpLogarithm
        onClicked: txtInput.text = txtInput.text + "log("
    }
    Connections {
        target: btnOpLogarithmNatural
        onClicked: txtInput.text = txtInput.text + "ln("
    }
    Connections {
        target: btnOpExponentiation10
        onClicked: txtInput.text = txtInput.text + "10^"
    }
    Connections {
        target: btnOpExponentiationE
        onClicked: txtInput.text = txtInput.text + "e^"
    }
    Connections {
        target: btnOpFac
        onClicked: txtInput.text = txtInput.text + "fac("
    }
    Connections {
        target: btnOpSin
        onClicked: txtInput.text = txtInput.text + "sin("
    }
    Connections {
        target: btnOpCos
        onClicked: txtInput.text = txtInput.text + "cos("
    }
    Connections {
        target: btnOpTan
        onClicked: txtInput.text = txtInput.text + "tan("
    }
    Connections {
        target: btnOpAbs
        onClicked: txtInput.text = txtInput.text + "abs("
    }
    Connections {
        target: btnOpModulus
        onClicked: txtInput.text = txtInput.text + "%"
    }
    Connections {
        target: btnOpAsin
        onClicked: txtInput.text = txtInput.text + "asin("
    }
    Connections {
        target: btnOpAcos
        onClicked: txtInput.text = txtInput.text + "acos("
    }
    Connections {
        target: btnOpAtan
        onClicked: txtInput.text = txtInput.text + "atan("
    }
    Connections {
        target: btnNumPi
        onClicked: txtInput.text = txtInput.text + "pi"
    }
    Connections {
        target: btnNumE
        onClicked: txtInput.text = txtInput.text + "e"
    }
}
