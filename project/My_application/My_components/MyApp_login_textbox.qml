import QtQuick 2.0
import QtQuick.Controls 2.12
TextField{
    placeholderText: "my text"
    color: "white"
    height: 40
    width: parent.width
    background: Rectangle{
        anchors.fill: parent
        color: "#2d3436"
        Rectangle{
            width: parent.width
            height: 2
            radius: 2
            anchors.bottom: parent.bottom
            color: "royalblue"
        }
    }
}
