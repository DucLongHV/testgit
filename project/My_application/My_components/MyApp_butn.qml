import QtQuick 2.12
import QtQuick.Controls 2.12
Button{
    id: my_butn_root
    property color text_color: "#2687ea"
    property color color_hovered: "#1f2123"
    property color color: "#181a1b"
    property int radius: 6
    property alias text_user: my_butn_text.text

    width: my_butn_text.implicitWidth *1.7
    height: my_butn_text.implicitHeight *2.2

    background: Rectangle{
        anchors.fill: parent
        radius: parent.radius
        color: parent.hovered ? color_hovered : my_butn_root.color
        Text{
            id: my_butn_text
            anchors.centerIn: parent
            text: "My Button"
            color: text_color
            font.pointSize: 17
            font.bold: true
        }
    }
}
