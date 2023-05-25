import QtQuick 2.12
import QtMultimedia 5.13
import "../My_components"
Item {
    Rectangle{
        id: page2_background
        anchors.centerIn: parent
        width: video.width
        height: video.height
        opacity: 0.4
        color: "#002b36"
        radius: 10
    }

    Video {
        id: video
        width : 800
        height : 600
        anchors.centerIn: parent

        source: "qrc:/Video/jellyfish-110877.mp4"

        focus: true
        Keys.onSpacePressed: video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
        Keys.onLeftPressed: video.seek(video.position - 2000)
        Keys.onRightPressed: video.seek(video.position + 2000)
    }

    MyApp_butn{
        width: 100
        height: 60
        text_user: qsTr("Play")
        text_color: "white"
        anchors{
            horizontalCenter: page2_background.horizontalCenter
            bottom: page2_background.bottom
            bottomMargin: 7
        }
        onReleased: {
            video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
            text_user = video.playbackState == MediaPlayer.PlayingState ? qsTr("Pause") : qsTr("Play")
        }
    }

}
