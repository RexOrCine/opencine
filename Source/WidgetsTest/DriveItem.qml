import QtQuick 2.3
import QtGraphicalEffects 1.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle
{
    id: rectangle1
    width: 168
    height: 36
    smooth: false
    visible: true
    opacity: 1
    antialiasing: false

    property string driveName: "?"
    property string driveLetter: "?"
    property string usedSpace: "?"
    property string totalSpace: "?"
    property string spaceUnit: "?"
    property alias backgroundColor: rectangle1.color

    Text {
        id: driveInfo
        y: 3
        color: "#ffffff"
        text: driveName + " (" + driveLetter + ")"
        antialiasing: false
        smooth: false
        styleColor: "#ff0000"
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 5
        font.pixelSize: 12
    }

    ProgressBar {
        x: 3
        y: 0
        smooth: false
        anchors.bottom: parent.bottom
        antialiasing: false
        //anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        style: ProgressBarStyle {
            progress: Rectangle {
                border.width: 1
                border.color: "#01000000"
                radius: 2
                anchors.margins: 1
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#644624" }
                    GradientStop { position: 1.0; color: "#a27e34" }
                }
            }

            background: Rectangle {
                radius: 3
                color: "transparent"
                border.color: "#1e1e1e"
                border.width: 1
                //implicitWidth: 200
                implicitHeight: 5
            }
        }

        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.right: parent.right
        anchors.rightMargin: 5
        value: parseFloat(usedSpace)
        maximumValue: parseFloat(totalSpace)
    }

    Text {
        id: driveSize
        x: -7
        y: -1
        color: "#ffffff"
        text: usedSpace + "/" + totalSpace + " " + spaceUnit
        antialiasing: false
        smooth: false
        styleColor: "#db0000"
        anchors.right: parent.right
        anchors.rightMargin: 5
        font.pixelSize: 12
        anchors.top: parent.top
        anchors.topMargin: 5
    }
}
