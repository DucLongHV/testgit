import QtQuick 2.12
import QtQuick.Controls 2.12
import "qrc:/"

Item{
    Rectangle{
        id: screen2_background
        width: root_MyApp.width
        height: root_MyApp.height
        color: myApp_color2
        opacity: 0.5
    }
    MyApp_bar{z:2}

    SwipeView {
        id: view
        currentIndex: 0
        width: screen2_background.width
        height: screen2_background.height-60
        anchors{
            left: screen2_background.left
            top: screen2_background.top
            topMargin: 60
        }

        Page1{}
        Page2{}
        Page3{}

    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}

