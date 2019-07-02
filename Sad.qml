import QtQuick 2.0

Item {
    width: 433
    height: 256


    Image {
        anchors.fill: parent
        property int currImg: 1
        id: image_sad
        x: 0
        y: 0
        width: 433
        height: 256
        source: "sad/"+currImg+"-01.png"

        NumberAnimation on currImg {
            id: sad
            alwaysRunToEnd: true
            from: 1
            to: 4
            duration: 200
        }
    }
}
