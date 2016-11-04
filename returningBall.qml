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
        state: "LEFTSIDE"
        states: [
            State {
                name: "LEFTSIDE"
                PropertyChanges {
                    target: rectangle1
                    x: 8
                }
            },
            State{
                name: "RIGHTSIDE"
                PropertyChanges{
                    target: rectangle1
                    x: 472-rectangle1.width

                }
            }

        ]
        transitions: [
            Transition {
                from: "LEFTSIDE"
                to: "RIGHTSIDE"
                NumberAnimation{
                    target: rectangle1
                    duration: 2000
                    easing.type: Easing.InOutSine
                    property: "x"
                }

            },
            Transition{
                from: "RIGHTSIDE"
                to: "LEFTSIDE"
                NumberAnimation{
                    target: rectangle1
                    duration: 2000
                    easing.type: Easing.InOutSine
                    property: "x"
                }
            }
        ]
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
                rectangle1.state = "LEFTSIDE"
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
                rectangle1.state = "RIGHTSIDE"
            }
        }
    }
}
