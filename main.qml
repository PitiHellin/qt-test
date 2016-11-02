import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 480
    height: 272
    title: qsTr("Test")

    StackView {
        id: stackTop
        initialItem: view
        width:464
        height:173

        Component {
            id: view

            MouseArea {
                id: mouseArea1
                x: 8
                y: 6
                width: 464
                height: 173
            }
        }
    }

    //Button

    Rectangle{
        id: rectangleA
        x: 8
        y: 185
        width: 116
        height: 79
        color: "#ff0404"
        border.color: "#ffffff"
        MouseArea{
            anchors.fill: parent
            //onClicked: console.log("Test A")
            onClicked: stackTop.push(Qt.resolvedUrl("colorChange.qml"))
        }
        Text {
            id: text1
            x: 50
            y: 33
            width: 4
            height: 14
            text: qsTr("A")
            anchors.centerIn: parent
            font.pixelSize: 12
            color: '#ffffff'
        }
    }
    Rectangle {
        id: rectangleB
        x: 123
        y: 185
        width: 116
        height: 79
        color: "#40bc03"
        border.color: "#ffffff"
        MouseArea{
            anchors.fill: parent
            onClicked: stackTop.push(Qt.resolvedUrl("rotationTriangle.qml"))
        }
        Text {
            id: text2
            x: 45
            y: 33
            width: 9
            height: 12
            text: qsTr("B")
            anchors.centerIn: parent
            font.pixelSize: 12
            color: '#ffffff'
        }
    }
    Rectangle {
        id: rectangleC
        x: 239
        y: 185
        width: 116
        height: 79
        color: "#0438f2"
        border.color: "#ffffff"
        MouseArea{
            anchors.fill: parent
            onClicked: stackTop.push(Qt.resolvedUrl("changeDiameter.qml"))
        }
        Text {
            id: text3
            x: 45
            y: 33
            text: qsTr("C")
            anchors.centerIn: parent
            font.pixelSize: 12
            color: '#ffffff'
        }
    }
    Rectangle {
        id: rectangleD
        x: 356
        y: 185
        width: 116
        height: 79
        color: "#ca07ca"
        border.color: "#ffffff"
        MouseArea{
            anchors.fill: parent
            onClicked: stackTop.push(Qt.resolvedUrl("returningBall.qml"))
        }

        Text {
            id: text4
            x: 45
            y: 33
            text: qsTr("D")
            anchors.centerIn: parent
            font.pixelSize: 12
            color: '#ffffff'
        }
    }

}
