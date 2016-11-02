import QtQuick 2.4
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2
import Qt.labs.calendar 1.0

Rectangle {
    x: 8
    y: 6
    width: 464
    height: 173
    property var pos: 0

    Image {
        id: image1
        x: 8
        y: 8
        width: 30
        height: 30
        source: "/files/Images/triangle.png"
        MouseArea {
            id: triangle1MA
            anchors.fill: parent
            hoverEnabled: true

            onClicked: {

                if(pos == 0){
                    image1.rotation = 270
                    pos = 270
                }
                else if(pos == 270){
                    image1.rotation = 180
                    pos = 180
                }
                else if(pos == 180){
                    image1.rotation = 90
                    pos = 90

                }
                else{
                    image1.rotation = 0
                    pos = 0
                }
            }
        }
    }

    Image {
        id: image2
        x: 426
        y: 8
        width: 30
        height: 30
        source: "/files/Images/triangle.png"
        MouseArea {
            id: triangle2MA
            anchors.fill: parent
            hoverEnabled: true

            onClicked: {

                if(pos == 0){
                    image2.rotation = 90
                    pos = 90
                }
                else if(pos == 90){
                    image2.rotation = 180
                    pos = 180
                }
                else if(pos == 180){
                    image2.rotation = 270
                    pos = 270

                }
                else{
                    image2.rotation = 0
                    pos = 0
                }
            }
        }
    }

    Image {
        id: image3
        x: 8
        y: 135
        width: 30
        height: 30
        source: "/files/Images/triangle.png"
        MouseArea {
            id: triangle3MA
            anchors.fill: parent
            hoverEnabled: true
            onClicked: {

                if(pos == 0){
                    image3.rotation = 270
                    pos = 270
                }
                else if(pos == 270){
                    image3.rotation = 180
                    pos = 180
                }
                else if(pos == 180){
                    image3.rotation = 90
                    pos = 90

                }
                else{
                    image3.rotation = 0
                    pos = 0
                }
            }
        }
    }

    Image {
        id: image4
        x: 426
        y: 135
        width: 30
        height: 30
        source: "/files/Images/triangle.png"
        MouseArea {
            id: triangle4MA
            anchors.fill: parent
            hoverEnabled: true
            property var active: false
            onClicked: {

                if(pos == 0){
                    image4.rotation = 90
                    pos = 90
                }
                else if(pos == 90){
                    image4.rotation = 180
                    pos = 180
                }
                else if(pos == 180){
                    image4.rotation = 270
                    pos = 270

                }
                else{
                    image4.rotation = 0
                    pos = 0
                }
            }
        }
    }

}
