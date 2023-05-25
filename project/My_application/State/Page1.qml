import QtQuick 2.0
import QtQuick.Controls 2.12

import "qrc:/My_components/"
Item {
    property var progress: Math.round(progress_bar.position*1000)/10
    Slider{
        id: slider_progress
        anchors.horizontalCenter: column1.horizontalCenter
        anchors.top: column1.bottom
        anchors.topMargin: 60
        width: progress_bar.width + 40
        value: progress_bar.value
        from: 0
        to: 1

        onValueChanged: {
            progress_bar.value = slider_progress.value
        }
    }

    Column{
        id: column1
        anchors{
            centerIn: parent
        }

        width: parent.width*0.7

        spacing: 50
        ProgressBar {
            id: progress_bar
            width: parent.width
            value: 0.5

//            background: Slider{
//                id: slider_progress
//                width: parent.width + 40
//                anchors.horizontalCenter: parent.horizontalCenter
//                anchors.topMargin: 50
//                value: progress_bar.value
//                from: 0
//                to: 1
//                opacity: 0.7
//                onValueChanged: {
//                    parent.value = slider_progress.value
//                }
//            }
        }

        Label{
            height: 30
            width: parent.width
            Text{
                anchors.centerIn: parent
                text: qsTr("Value: "+ progress)
                color: "white"
                font.pointSize: 20
            }
        }


        Row{
            width: parent.width * 0.7
            anchors.horizontalCenter: parent.horizontalCenter
            height: 50
            spacing: width - bt_decrease.width - bt_increase.width

            MyApp_butn{
                id: bt_decrease
                width: 100
                text_user: "-"
                text_color: "white"
                onReleased: {
                    progress_bar.value -= 0.05
                }
            }

            MyApp_butn{
                id: bt_increase
                text_user: "+"
                text_color: "white"
                width: 100
                onReleased: {
                    progress_bar.value += 0.05
                }
            }
        }
    }


}
