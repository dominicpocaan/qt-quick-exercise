import QtQuick 2.15
import QtQuick.Window 2.15
import 'components'

Window {
    width: 270
    height: 450
    visible: true
    color: "#00000000"
    title: qsTr("Simple Calculator")

    Rectangle {
        id: appContainer
        color: "#1a1a1a"
        anchors.fill: parent
        anchors.rightMargin: 14
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10

        Rectangle {
            id: topBar
            x: 0
            y: 0
            width: 246
            height: 25
            color: "#2a2a2a"
        }

        Row {
            id: btnsRow5
            y: 475
            width: 50
            height: 50
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.bottomMargin: 10

            CustomButton {
                id: btnPlusMinus
                width: 50
                text: "+/-"
                anchors.left: parent.left
                anchors.leftMargin: 5
                onClicked: {
                    backendConnection.addUserInput('-')
                }
            }

            CustomButton {
                id: btnZero
                width: 50
                text: "0"
                anchors.left: parent.left
                anchors.leftMargin: 60
                onClicked: {
                    backendConnection.addUserInput('0')
                }
            }

            CustomButton {
                id: btnDot
                text: "."
                anchors.left: parent.left
                anchors.leftMargin: 115
                onClicked: {
                    backendConnection.addUserInput('.')
                }
            }

            CustomButton {
                id: btnEqual
                text: "="
                anchors.left: parent.left
                defaultColor: "#50ff43"
                buttonPressedColor: "#94ff77"
                anchors.leftMargin: 170
                onClicked: {
                    backendConnection.addUserInput('=')
                }
            }
        }

        Row {
            id: btnsRow4
            y: 475
            width: 50
            height: 50
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10
            CustomButton {
                id: btnOne
                width: 50
                text: "1"
                anchors.left: parent.left
                anchors.leftMargin: 5
                onClicked: {
                    backendConnection.addUserInput('1')
                }
            }

            CustomButton {
                id: btnTwo
                width: 50
                text: "2"
                anchors.left: parent.left
                anchors.leftMargin: 60
                onClicked: {
                    backendConnection.addUserInput('2')
                }
            }

            CustomButton {
                id: btnThree
                text: "3"
                anchors.left: parent.left
                anchors.leftMargin: 115
                onClicked: {
                    backendConnection.addUserInput('3')
                }
            }

            CustomButton {
                id: btnPlus
                text: "+"
                anchors.left: parent.left
                buttonFontColor: "#50ff43"
                anchors.leftMargin: 170
                onClicked: {
                    backendConnection.addUserInput('+')
                }
            }
            anchors.bottomMargin: 65
            anchors.rightMargin: 10
        }

        Row {
            id: btnsRow3
            x: 0
            y: 430
            width: 50
            height: 50
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10
            CustomButton {
                id: btnFour
                width: 50
                text: "4"
                anchors.left: parent.left
                anchors.leftMargin: 5
                onClicked: {
                    backendConnection.addUserInput('4')
                }
            }

            CustomButton {
                id: btnFive
                width: 50
                text: "5"
                anchors.left: parent.left
                anchors.leftMargin: 60
                onClicked: {
                    backendConnection.addUserInput('5')
                }
            }

            CustomButton {
                id: btnSix
                text: "6"
                anchors.left: parent.left
                anchors.leftMargin: 115
                onClicked: {
                    backendConnection.addUserInput('6')
                }
            }

            CustomButton {
                id: btnMinus
                text: "-"
                anchors.left: parent.left
                buttonFontColor: "#50ff43"
                anchors.leftMargin: 170
                onClicked: {
                    backendConnection.addUserInput('-')
                }
            }
            anchors.bottomMargin: 120
            anchors.rightMargin: 10
        }

        Row {
            id: btnsRow2
            x: -4
            y: 424
            width: 50
            height: 50
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10
            CustomButton {
                id: btnSeven
                width: 50
                text: "7"
                anchors.left: parent.left
                anchors.leftMargin: 5
                onClicked: {
                    backendConnection.addUserInput('7')
                }
            }

            CustomButton {
                id: btnEight
                width: 50
                text: "8"
                anchors.left: parent.left
                anchors.leftMargin: 60
                onClicked: {
                    backendConnection.addUserInput('8')
                }
            }

            CustomButton {
                id: btnNine
                text: "9"
                anchors.left: parent.left
                anchors.leftMargin: 115
                onClicked: {
                    backendConnection.addUserInput('9')
                }
            }

            CustomButton {
                id: btnMultiply
                text: "X"
                anchors.left: parent.left
                buttonFontColor: "#50ff43"
                anchors.leftMargin: 170
                onClicked: {
                    backendConnection.addUserInput('X')
                }
            }
            anchors.bottomMargin: 175
            anchors.rightMargin: 10
        }

        Row {
            id: btnsRow1
            x: -2
            y: 416
            width: 50
            height: 50
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10
            CustomButton {
                id: btnClear
                width: 50
                text: "C"
                anchors.left: parent.left
                buttonFontColor: "#ff4433"
                anchors.leftMargin: 5
                onClicked: {
                    backendConnection.addUserInput('C')
                }
            }

            CustomButton {
                id: btnParenthesis
                width: 50
                text: "( )"
                anchors.left: parent.left
                buttonFontColor: "#50ff43"
                anchors.leftMargin: 60
                onClicked: {
                    backendConnection.addUserInput('()')
                }
            }

            CustomButton {
                id: btnPercent
                text: "%"
                anchors.left: parent.left
                buttonFontColor: "#50ff43"
                anchors.leftMargin: 115
                onClicked: {
                    backendConnection.addUserInput('%')
                }
            }

            CustomButton {
                id: btnDivide
                text: "/"
                anchors.left: parent.left
                buttonFontColor: "#50ff43"
                anchors.leftMargin: 170
                onClicked: {
                    backendConnection.addUserInput('/')
                }
            }
            anchors.bottomMargin: 230
            anchors.rightMargin: 10
        }


        Text {
            id: inputText
            y: 37
            width: 213
            height: 64
            color: "#ffffff"
            text: qsTr("")
            anchors.left: parent.left
            anchors.right: parent.right
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            clip: true
            font.pointSize: 25
            anchors.leftMargin: 25
            anchors.rightMargin: 25
        }
        Text {
            id: resultText
            y: 107
            width: 213
            height: 30
            color: "#ffffff"
            text: qsTr("")
            anchors.left: parent.left
            anchors.right: parent.right
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 15
            anchors.leftMargin: 25
            anchors.rightMargin: 25
        }
    }

    Connections {
        target: backendConnection

        function onAddInput (str) {
            inputText.text = str
        }
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:1.3300000429153442;height:450;width:270}D{i:3}D{i:29}D{i:1}
}
##^##*/
