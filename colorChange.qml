import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Rectangle {
    x: 8
    y: 6
    width: 464
    height: 173

    Rectangle {
        id: rectangle1
        x: 8
        y: 8
        width: 30
        height: 30
        color: "#000000"
        MouseArea {
            id: rectangle1MA
            anchors.fill: parent
            hoverEnabled: true
            property var active: false
            onClicked: {

                if(active){
                    rectangle1.color = 'red'
                    active=false
                }
                else{
                    active=true
                    rectangle1.color = 'blue'
                }
            }
        }
    }

    Rectangle {
        id: rectangle2
        x: 426
        y: 8
        width: 30
        height: 30
        color: "#000000"
        MouseArea {
            id: rectangle2MA
            anchors.fill: parent
            hoverEnabled: true
            property var active: false
            onClicked: {

                if(active){
                    rectangle2.color = 'red'
                    active=false
                }
                else{
                    active=true
                    rectangle2.color = 'blue'
                }
            }
        }
    }

    Rectangle {
        id: rectangle3
        x: 8
        y: 135
        width: 30
        height: 30
        color: "#000000"
        MouseArea {
            id: rectangle3MA
            anchors.fill: parent
            hoverEnabled: true
            property var active: false
            onClicked: {

                if(active){
                    rectangle3.color = 'red'
                    active=false
                }
                else{
                    active=true
                    rectangle3.color = 'blue'
                }
            }
        }
    }

    Rectangle {
        id: rectangle4
        x: 426
        y: 135
        width: 30
        height: 30
        color: "#000000"
        MouseArea {
            id: rectangle4MA
            anchors.fill: parent
            hoverEnabled: true
            property var active: false
            onClicked: {

                if(active){
                    rectangle4.color = 'red'
                    active=false
                }
                else{
                    active=true
                    rectangle4.color = 'blue'
                }
            }
        }
    }
}
