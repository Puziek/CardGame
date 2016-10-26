import QtQuick 2.7
import QtQuick.Controls 1.5

ApplicationWindow {
    visible: true
    width: 1600
    height: 900
    title: qsTr("Hello World")

    Rectangle {
        id: background
        anchors.fill: parent

        Rectangle {
            id: playerPanel
            width: background.width / 2
            height: background.height / 2.5
            anchors.bottom: background.bottom
            anchors.horizontalCenter: background.horizontalCenter

            color: "brown"
            border.width: 10

            MouseArea {
                id: panelMouseArea
                anchors.fill: playerPanel
                hoverEnabled: true
            }

            Card {
                parentMouseArea: panelMouseArea
            }

            Card {
                parentMouseArea: panelMouseArea
            }

            Card {
                parentMouseArea: panelMouseArea
            }

            Card {
                parentMouseArea: panelMouseArea
            }
        }

        Rectangle {
            id: rightPanel
            width: background.width / 2
            height: background.height / 2.5

            rotation: -90
            scale: 0.66

            anchors.horizontalCenter: background.right
            anchors.verticalCenter: background.verticalCenter
            anchors.horizontalCenterOffset: -rightPanel.height / 3

            color: "brown"
            border.width: 10
        }

        Rectangle {
            id: leftPanel
            width: background.width / 2
            height: background.height / 2.5

            rotation: 90
            scale: 0.66

            anchors.horizontalCenter: background.left
            anchors.verticalCenter: background.verticalCenter
            anchors.horizontalCenterOffset: leftPanel.height / 3

            color: "brown"
            border.width: 10
        }

        Rectangle {
            id: topPanel
            width: background.width / 2
            height: background.height / 2.5

            rotation: 180
            scale: 0.66

            anchors.horizontalCenter: background.horizontalCenter
            anchors.top: background.top
            anchors.topMargin: (-topPanel.height / 3) / 2

            color: "brown"
            border.width: 10
        }
    }

    /*GridView {
        id: cardsTable

    }*/
}
