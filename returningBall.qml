import QtQuick 2.7
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
//        MouseArea {
//            anchors.fill: parent
//            onClicked:{
//                rectangle1.x = 300

//            }
//        }


//        Behavior on x{
//                NumberAnimation{
//                    duration: 800
//                }
//        }
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


        onXChanged:
            console.log("value of X: ", x)
//        MouseArea {
//            id: mouseArea1
//            x: 0
//            y: 0
//            anchors.fill: parent
////            width: 448
////            height: 22
//            hoverEnabled: true

//            onEntered:{
//                rectangle1.x = sliderHorizontal1.value*430
//            }
//            onExited:{
//                rectangle1.x = 0

//            }
//        }
    }
}
