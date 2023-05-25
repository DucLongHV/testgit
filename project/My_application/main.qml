import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import "./State"

Window {
    property color myApp_color1: "#1351a7"
    property color myApp_color2: "#125ab8"
    property color myApp_color3: "#062d40"

    id: root_MyApp
    visible: true
    minimumWidth: 800
    minimumHeight: 600
    title: qsTr("My Application")




    // background
    MyApp_bar{
        id: myApp_bar
    }

    MyApp_background{
        id: myApp_page1_background
        anchors.top: myApp_bar.bottom
    }

    StackView{
        id: myApp_stackbiew
        width: myApp_page1_background.width
        height: myApp_page1_background.height
        initialItem: "./State/ScreenLogin.qml"

        //transitions
        pushEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to:1
                duration: 500
            }
        }
        pushExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to:0
                duration: 500
            }
        }
        popEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to:1
                duration: 500
            }
        }
        popExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to:0
                duration: 500
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:1020;width:1980}
}
##^##*/
