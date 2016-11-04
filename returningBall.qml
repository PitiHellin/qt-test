import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Rectangle {
    x: 0
    y: 0
    width: 480
    height: 173

    Rectangle {
        id: rectangle1
        x: 8
        y: 26
        width: 30
        height: 30
        color: "#ffffff"
        border.color: "black"
        radius: 100
    }

    Rectangle{
        id: rectangle123
        x: 8
        y: 77
        width: 60
        height: 60
        color: "#ff0404"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                rectangle1.x = 8
            }
        }
    }

    Rectangle{
        id: rectangle1234
        x: 412
        y: 77
        width: 60
        height: 60
        color: "#ff0404"
        MouseArea{
            anchors.fill: parent
            onClicked:{
                rectangle1.x = 472-rectangle1.width
            }
        }
    }
}
