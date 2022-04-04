import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Sunck-Job(0.0.1) - Alpha")
    flags: Qt.Window | Qt.FramelessWindowHint

    TopView {
        id: topView
        height: 32
        anchors {top: parent.top; right: parent.right; left: parent.left}
    }

    Rectangle {
        id: bottomWindow
        anchors {bottom: parent.bottom; left: parent.left; right: parent.right}
        color: "#005500"
        height: 32
    }

    Rectangle {
        id: leftWindow
        anchors {top: topView.bottom; bottom: bottomWindow.top; left: parent.left}
        color: "#102030"
        width: 80
    }

    Rectangle {
        id: rightWindow
        anchors {left: leftWindow.right; top: topView.bottom; bottom: bottomWindow.top; right: parent.right}
    }

    MouseArea {
        property var clickPos
        anchors.fill: parent
        propagateComposedEvents: true
        onPressed: {
            clickPos = { x: mouse.x, y: mouse.y }
        }
        onPositionChanged: {
            mainWindow.x = SunckUtils.cursorPos().x - clickPos.x
            mainWindow.y = SunckUtils.cursorPos().y - clickPos.y
        }
    }
}
