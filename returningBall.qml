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
        x: sliderHorizontal1.value*434
        y: 26
        width: 30
        height: 30
        color: "#ffffff"
        border.color: "black"
        radius: 100
        SequentialAnimation{
            id: animation
            NumberAnimation {
                target: rectangle1
                property: "x"
                to: 8
                duration: 2000
                easing.type: Easing.InOutSine
            }
        }
    }
    Slider {
            id: sliderHorizontal1
            x: 8
            y: 143
            width: 464
            height: 22
            onPressedChanged: {
                animation.start()
//                if(pressed){
//                    rectangle1.x = sliderHorizontal1.value*430
//                }
//                else{
//                    animation.start()
//                }
            }
    }
}
