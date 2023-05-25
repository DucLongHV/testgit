import QtQuick 2.12
import "qrc:/My_components/"

Item {
    Rectangle{
        id: screen1_background
        width: root_MyApp.width
        height: root_MyApp.height
        color: myApp_color2
        opacity: 0
    }
    Row{
        anchors{
            left: screen1_background.left
            leftMargin: 200
            top: screen1_background.top
            topMargin: 270
        }

        spacing: 160
        Column{
            spacing: 30
            Text{
                text: "Use your application in everywhere\neverytime, and every platfrom."
                font.pointSize: 25
                font.bold: true
                color: "white"
            }

            Text{
                text: "MyApp is an entertainment application that gives\nyou relax and get chill with your friends.\nTrusted by millions of users\naround the world."
                font.pointSize: 20
                color: "white"
            }
            Row{
                MyApp_butn{
                    text_user: qsTr("Get started")
                    onReleased: {
                        console.log(text_user)
                        myApp_stackbiew.push("qrc:/State/Screen2.qml")
                    }
                }
                MyApp_butn{
                    text_user: qsTr("Try demo")
                    text_color: "white"
                    color: myApp_color1
                    color_hovered: "#1765cc"

                    onReleased: {
                        console.log(text_user)
                    }
                }
                Rectangle{
                    width: 2
                    height: parent.height*0.8
                    color: "#181a1b"
                    anchors.verticalCenter: parent.verticalCenter
                }
                MyApp_butn{
                    text_user: qsTr("Watch video")
                    text_color: "white"
                    color: myApp_color1
                    color_hovered: "#1765cc"

                    onReleased: {
                        console.log(text_user)
                    }
                }


            }

        }
        Image {
            y: 50
            source: "qrc:/Gif/pic.JPG"
        }
    }
}


