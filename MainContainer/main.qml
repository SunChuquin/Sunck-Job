import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Sunck-Job(0.0.1) - Alpha")
    flags: Qt.FramelessWindowHint

    Rectangle {
        id: mainWindow
        anchors.fill: parent

        Rectangle {
            id: topWindow
            anchors {top: mainWindow.top; right: mainWindow.right; left: mainWindow.left}
            color: "#0000DD"
            height: 30
        }

        Rectangle {
            id: bottomWindow
            anchors {bottom: mainWindow.bottom; left: mainWindow.left; right: mainWindow.right}
            color: "#FF0000"
            height: 28
        }

        Rectangle {
            id: leftWindow
            anchors {top: topWindow.bottom; bottom: bottomWindow.top; left: mainWindow.left}
            color: "#00FF00"
            width: 80
        }

        Rectangle {
            id: rightWindow
            anchors {left: leftWindow.right; top: topWindow.bottom; bottom: bottomWindow.top; right: mainWindow.right}
            color: "#102030"
        }
    }
}
