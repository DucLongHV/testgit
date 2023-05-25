import QtQuick 2.12
import QtQuick.Controls 2.12
import "../My_components"
Item {
    Rectangle{
        id: login_background
        anchors.centerIn: parent
        width: 400
        height: 400
        opacity: 0.4
        color: "#002b36"
        radius: 10
    }

    Column{
        anchors.centerIn: parent
        width: 200
        height: 270
        spacing: 10

        Text{
            text:qsTr("Name account")
            color: "white"
            font.pointSize: 15
        }
        MyApp_login_textbox{
            id: user
            placeholderText: "Enter username"
        }
        Text{
            text:qsTr("Password")
            verticalAlignment: Text.AlignBottom
            height:35
            color: "white"
            font.pointSize: 15
        }
        MyApp_login_textbox{
            id: pass
            placeholderText: qsTr("Enter password")
        }
    }
    Text {
        id: login_warning
        anchors{
            horizontalCenter: parent.horizontalCenter
            bottom: login_background.bottom
            bottomMargin: 130
        }
        color: "crimson"
        font.pointSize: 10
    }
    MyApp_butn{
        text_user: "Log In"
        anchors{
            horizontalCenter: parent.horizontalCenter
            bottom: login_background.bottom
            bottomMargin: 70
        }
        height: 40
        text_color: "white"
        color: "#2d3436"
        onReleased: {
            if(user.text === "" || pass.text === "")
            {
                console.log("Please fill all the username and password")
                login_warning.text = qsTr("Please fill all the username and password")
            }
            else
                myApp_stackbiew.push("Screen1.qml")
        }
    }
}





/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
