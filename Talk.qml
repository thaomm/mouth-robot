import QtQuick 2.0

Item {
    width: 433
    height: 256
    onVisibleChanged: talk.start()
    Image {
        anchors.fill: parent
        property int currImg: 1
        id: image_talk
        x: 0
        y: 0
        width: 433
        height: 256
        source: "talk/"+currImg+"-01.png"

        NumberAnimation on currImg {
            id: talk
            alwaysRunToEnd: true
            from: 1
            to: 6
            duration: 300
        }
    }
}
