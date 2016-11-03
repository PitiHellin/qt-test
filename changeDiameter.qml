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
        x: 241
        y: 76
        width: 215
        height: 22
        value: 1
    }
    Rectangle {
        id: rectangle1
        x: 92
        y: 62
        width: sliderHorizontal1.value*100
        height: sliderHorizontal1.value*100
        color: "#ffffff"
        border.color: "black"
        radius: 100

    }
}
