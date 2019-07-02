import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    visible: true
    width: 433
    height: 256
    title: qsTr("Hello World")
    property int face: 0
    Normal{
    id: normal_
    visible: face === 1
    }

    Smile{
       id: smile_
       visible: face === 2
    }

    Sad{
        id: sad_
        visible: face === 3
    }

    Talk{
        id: talk_
        visible: face === 4
    }

    MouseArea{
        anchors.fill: parent
        onClicked: console.log(normal_.visible)
    }

    Item {
        id: key
        anchors.fill: parent
        focus: true

        Keys.onDigit0Pressed: {
            console.log(event.key)
            face = 0
        }
        Keys.onDigit1Pressed: {
            console.log(event.key)
            face = 1
        }
        Keys.onDigit2Pressed: {
            console.log(event.key)
            face = 2
        }
        Keys.onDigit3Pressed: {
            console.log(event.key)
            face = 3
        }
        Keys.onDigit4Pressed: {
            console.log(event.key)
            face = 4
        }
    }
}
