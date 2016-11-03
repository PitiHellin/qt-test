import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Rectangle {
    x: 8
    y: 6
    width: 464
    height: 173

    Slider {
        id: sliderHorizontal1
        x: 8
        y: 143
        width: 448
        height: 22
        MouseArea{
            id: sliderMouseArea
            hoverEnabled: true
            onEntered: {
//                rectangle1.x.valueOf(430)
//                rectangle1.x.value*430
            }
            onExited: {
                rectangle1.x.valueOf(0)

            }
        }
    }

    Rectangle {
        id: rectangle1
        x: sliderHorizontal1.value*430
//        x: 0
        y: 62
        width: 30
        height: 30
        color: "#ffffff"
        border.color: "black"
        radius: 100
    }
}
