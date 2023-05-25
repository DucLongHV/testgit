import QtQuick 2.0

Rectangle{
    width: parent.width
    height: parent.height
    color: myApp_color2
    Rectangle{
        width: parent.width * 3
        height: width
        color: myApp_color1
        radius: width
        anchors{
            top: parent.top
            topMargin: 50
            left: parent.left
            leftMargin: -width/6
        }
    }
}
