import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Rectangle {
    x: 8
    y: 6
    width: 464
    height: 173
    state: "RELEASED"

    Slider {
        id: sliderHorizontal1
        x: 8
        y: 143
        width: 448
        height: 22
    }

    MouseArea{
        id: mouseAreaRB
        onPressed: sliderHorizontal1.state = "PRESSED"
        onReleased: sliderHorizontal1.state = "RELEASED"
    }
    // @disable-check M10
    state: [
        State {
            name: "PRESSED"
            PropertyChanges { target: sliderHorizontal1}
        },
        State {
            name: "RELEASED"
            PropertyChanges { target: sliderHorizontal1}
        }
    ]
    // @disable-check M16
    transitons: [

        Transition {
            from: "PRESSED"
            to: "RELEASED"
        },
        Transition {
            from: "RELEASED"
            to: "PRESSED"
        }

    ]

    Rectangle {
        id: rectangle1
        x: sliderHorizontal1.value*430
        y: 62
        width: 30
        height: 30
        color: "#ffffff"
        border.color: "black"
        radius: 100
    }


}
