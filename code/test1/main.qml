import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button{
        id: btn
        anchors.centerIn: parent
        width: txt.implicitWidth * 3
        height: txt.implicitHeight *2.5

        background:Rectangle{
            anchors.fill: parent
            radius: 4

            color: "crimson" //parent.down? "navy" : (parent.hovered ? "crimson" : "limegreen")

            Text{
                id: txt
                anchors.centerIn: parent
                text: qsTr("My button !")
                color: "orange"
                font.bold: true
                font.pointSize: 20

            }
        }
        property int cnt: 0
        onClicked: warning.text = qsTr("Hello world "+cnt++)

    }
    Text{
        id: warning
        anchors.top: btn.bottom
        anchors.topMargin: 15
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 20
        color: "red"
    }
}
