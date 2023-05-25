import QtQuick 2.10
import QtCharts 2.3
import QtQuick.Controls 2.12
import "../My_components"
Item {
    Rectangle{
        id: page3_background
        anchors.topMargin: 60
        width: root_MyApp.width
        height: root_MyApp.height
        color: "lightblue"
        opacity: 0
    }
    Row{
        anchors{
            centerIn: page3_background
//            centerIn: parent
        }
        spacing: 200
        ChartView {
            id: myChart
            title: "My line"
            width : 800
            height : 600
            antialiasing: true

            Component.onCompleted: {
                myChart.axisX().titleText = "x"
                myChart.axisY().titleText = "y"
            }

            axes:[
                ValueAxis{
                    id: x_Axis
                    min: -10.0
                    max: 10.0
                },
                ValueAxis{
                    id: y_Axis
                    min: -10.0
                    max: 10.0
                }
            ]

            LineSeries{
                id: lineSeries
                name: "Blue line"
                axisX: x_Axis
                axisY: y_Axis
            }
        }

        Column{
            width: parent.width*0.3
            anchors.verticalCenter: myChart.verticalCenter
            spacing: 15
            Label{
                height: pointXY.implicitHeight
                width: pointXY.implicitWidth
                Text{
                    id: pointXY
                    text: ""
                    color: "white"
                    font.pointSize: 20
                    font.bold: true
                    anchors.centerIn: parent
                }
            }

            MyApp_Textbox{
                id: xAxis_label
                label: "X"
            }
            MyApp_Textbox{
                id: yAxis_label
                label: "Y"
            }
            MyApp_butn{
                id: submit
                text_user: "Submit"
                //threshold x and y
                property double x_: Math.max(Math.min(x_Axis.max, xAxis_label.text), x_Axis.min)
                property double y_: Math.max(Math.min(y_Axis.max, yAxis_label.text), y_Axis.min)
                onReleased:{
                    console.log("x: "+x_+", y: "+y_)
                    pointXY.text = qsTr("x: "+x_+", y: "+y_)
                    lineSeries.append(x_,y_)
                }
            }
            MyApp_butn{
                text_user: "Reset"
                anchors.horizontalCenter: submit.horizontalCenter
                onReleased:{
                    myChart.removeAllSeries()
                    myChart.createSeries(lineSeries,lineSeries.name,x_Axis,y_Axis)
                }
            }

        }
    }


}
