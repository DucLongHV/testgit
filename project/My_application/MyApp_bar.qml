import QtQuick 2.0
import QtQuick.Controls 2.12
Row{
    height: 60
    width: parent.width

    Rectangle{
        height: parent.height
        width: parent.width - esc.width
        color: myApp_color3
        Text{
            anchors.centerIn: parent
            text: qsTr("My application")
            font.pointSize:  15
            color: "royalblue"
        }
    }

    Button{
        id: esc
        height: parent.height
        width: height
        enabled: myApp_stackbiew.depth != 1
        icon.source: "qrc:/Icon/icons8-sign-out-48.png"
        icon.color: enabled ? "white" : "grey"


        background: Rectangle{
            anchors.fill: parent
            color: parent.hovered ? "#1f2123" : "#181a1b"
        }

        onReleased: {
            myApp_stackbiew.pop()
            console.log("exit")
        }
    }
}
