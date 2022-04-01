import QtQuick 2.15
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Item {
    id: topView
    width: 640
    height: 30

    RowLayout {
        anchors.left: parent.left
        anchors.right: parent.right
        BorderImage {
            id: appButton
            anchors.left: parent.left
            source: "images/金牛座32.png"
        }
        BorderImage {
            id: appButton2
            anchors.right: parent.right
            source: "images/金牛座32.png"
        }
    }
}
