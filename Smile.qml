import QtQuick 2.0

Item {
    width: 433
    height: 256
    onVisibleChanged: smile.start()
    Image {
        anchors.fill: parent
        property int currImg: 1
        id: image_smile
        x: 0
        y: 0
        width: 433
        height: 256
        source: "smile/"+currImg+"-01.png"

        NumberAnimation on currImg {
            id: smile
            alwaysRunToEnd: true
            from: 1
            to: 4
            duration: 200
        }
    }
}
