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
        rows: 5
        columns: 4

        Button {
            id: btnOpOpenBracket
            text: qsTr("(")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpCloseBracket
            text: qsTr(")")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpExponentiation2
            text: qsTr("x²")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpExponentiation
            text: qsTr("xⁿ")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpRadication
            text: qsTr("²√")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpLogarithm
            text: qsTr("log")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpLogarithmNatural
            text: qsTr("ln")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpExponentiation10
            text: qsTr("10ⁿ")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpExponentiationE
            text: qsTr("eⁿ")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpFac
            text: qsTr("fac")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpModulus
            text: qsTr("%")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpAbs
            text: qsTr("abs")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpSin
            text: qsTr("sin")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpCos
            text: qsTr("cos")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpTan
            text: qsTr("tan")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnNumPi
            text: qsTr("π")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpAsin
            text: qsTr("asin")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpAcos
            text: qsTr("acos")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnOpAtan
            text: qsTr("atan")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
        Button {
            id: btnNumE
            text: qsTr("e")
            font.pointSize: parent.height / 14
            width: Math.round(parent.width / 4) - 2
            height: Math.round(parent.height / 5) - 2
        }
    }

    Connections {
        target: btnOpOpenBracket
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("(", 1);
    }
    Connections {
        target: btnOpCloseBracket
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation(")", 1);
    }
    Connections {
        target: btnOpExponentiation2
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("^2", 2);
    }
    Connections {
        target: btnOpExponentiation
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("^", 1);
    }
    Connections {
        target: btnOpRadication
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("sqrt(", 5);
    }
    Connections {
        target: btnOpLogarithm
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("log(", 4);
    }
    Connections {
        target: btnOpLogarithmNatural
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("ln(", 3);
    }
    Connections {
        target: btnOpExponentiation10
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("10^", 3);
    }
    Connections {
        target: btnOpExponentiationE
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("e^", 2);
    }
    Connections {
        target: btnOpFac
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("fac(", 4);
    }
    Connections {
        target: btnOpSin
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("sin(", 4);
    }
    Connections {
        target: btnOpCos
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("cos(", 4);
    }
    Connections {
        target: btnOpTan
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("tan(", 4);
    }
    Connections {
        target: btnOpAbs
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("abs(", 4);
    }
    Connections {
        target: btnOpModulus
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("%", 1);
    }
    Connections {
        target: btnOpAsin
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("asin(", 5);
    }
    Connections {
        target: btnOpAcos
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("acos(", 5);
    }
    Connections {
        target: btnOpAtan
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("atan(", 5);
    }
    Connections {
        target: btnNumPi
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("pi", 2);
    }
    Connections {
        target: btnNumE
        onClicked: txtInput.text = _qml2cpp.trackingStringEquation("e", 1);
    }
}
