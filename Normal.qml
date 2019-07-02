import QtQuick 2.0

Item {
    width: 433
    height: 256
    Image {
        anchors.fill: parent
        property int currImg: 1
        id: image
        x: 0
        y: 0
        width: 433
        height: 256
        source: "smile/4-01.png"
    }

}
