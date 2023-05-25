import QtQuick 2.12
import QtQuick.Controls 2.12
Row{
    id: textbox_root
    property string label: "X"
    property color color: "white"
    property alias text: text_box_field.text
    width: 130
    height: text_box_field.height
    Label{
        width: 30
        height: text_box_field.height
        Text{
            id: text_box
            anchors.verticalCenter : parent.verticalCenter
            text: qsTr(label)
            font.pointSize: 15
            font.bold: true
            color: textbox_root.color
        }
    }

    TextField{
        id: text_box_field
        width: 100
        placeholderText: qsTr(label + " Axis")
    }
}


