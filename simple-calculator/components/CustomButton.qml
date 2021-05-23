import QtQuick 2.0
import QtQuick.Controls 2.15

Button {
    id: customButton
    width: 50
    height: 50
    font.pointSize: 15
    antialiasing: true

    property color defaultColor: '#424345'
    property color buttonPressedColor: '#646669'
    property color buttonFontColor: '#ffffff'

    QtObject {
        id: internal

        property var dynamicColor: if (customButton.down) {
                                        customButton.down ? buttonPressedColor : defaultColor
                                   } else {
                                        defaultColor
                                   }
    }

    text: qsTr('0')

    contentItem: Item {
        id: buttonTextItem
        Text {
            id: buttonText
            text: customButton.text
            font: customButton.font
            color: buttonFontColor
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    background: Rectangle {
        color: internal.dynamicColor
        radius: 100
        border.color: "#585858"
        border.width: 3
    }
}
