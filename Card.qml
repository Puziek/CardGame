import QtQuick 2.0

Item {
    id: root

    property variant parentMouseArea: undefined
    property bool drag: false
    property int lastX: 0
    property int lastY: 0

    x: drag ? (parentMouseArea.mouseX - root.width / 2) : root.lastX
    y: drag ? (parentMouseArea.mouseY - root.height / 2)  : root.lastY
    width: 100
    height: 150

    Rectangle {
        id: card
        anchors.fill: root
        color: "white"
        radius: 10
        border.width: 5

        MouseArea {
            id: cardMouseArea
            anchors.fill: card
            propagateComposedEvents: true
            onClicked: {
                root.drag = !root.drag
                root.lastX = root.parentMouseArea.mouseX - root.width / 2
                root.lastY = root.parentMouseArea.mouseY - root.height / 2
            }
        }
    }
}
