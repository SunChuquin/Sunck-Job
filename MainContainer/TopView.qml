import QtQuick 2.15
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Rectangle {
    color: "#FFFFFF"

    RowLayout {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 4
        Rectangle {
            id: appButton
            radius: 4
            clip: true
            BorderImage {
                id: appIcon
                source: "/sunck - 副本.png"
                anchors.fill: parent
            }
            implicitHeight: 32
            implicitWidth: 32
            Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
        }
        Text {
            id: titleLabel
            text: "Sunck-Job"
            font.pointSize: 16
            Layout.fillHeight: true
            Layout.leftMargin: 2
        }
        Item {  // Spacer item
            Layout.fillWidth: true
        }
        ToolButton {
            id: minimizeButton
            text: "\ue624"
            font.family: "iconfont"
            font.pointSize: 24

            implicitHeight: font.pointSize
            implicitWidth: font.pointSize
            Layout.alignment: Qt.AlignVCenter | Qt.AlignRight
            onClicked: {
                close
            }
        }
        ToolButton {
            id: maximizeButton
            text: "\ue645"
            font.family: "iconfont"
            font.pointSize: 24
            implicitHeight: font.pointSize
            implicitWidth: font.pointSize
            Layout.alignment: Qt.AlignVCenter | Qt.AlignRight
        }
        Rectangle {
            implicitHeight: closeButton.implicitHeight
            implicitWidth: closeButton.implicitWidth
//            color: "#FFFFFF"
            color: "transparent"
            Text {
                id: closeButton
                text: "\ue62b"
                color: "green"
                font.family: "iconfont"
                font.pointSize: 24
    //            implicitHeight: font.pointSize
    //            implicitWidth: font.pointSize
                Layout.alignment: Qt.AlignVCenter | Qt.AlignRight

                MouseArea {
                    anchors.fill: parent
                    onClicked: Qt.callLater(Qt.quit)
                }
            }
        }
    }
}
