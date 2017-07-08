import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.0

Page {
    Material.theme: Material.Dark
    Material.accent: Material.Orange
    id: item1
    Rectangle {
        id: rect
        width: parent.width
        height: parent.height
        color: "#888a85"
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        border.color: "#fc3131"
        transformOrigin: Item.Center
    }

    footer: tabBar
    SwipeView {
        currentIndex: tabBar.currentIndex
        id: swipeView
        topPadding: 5
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        Item {
            id: item3
            GridLayout {
                x: 112
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.bottomMargin: 155
                anchors.topMargin: 155
                transformOrigin: Item.Center
                rowSpacing: 5
                rows: 3
                columns: 2

                Switch {
                    Material.theme: Material.Dark
                    Material.background: Material.BlueGrey
                    Material.accent: Material.Orange
                    id: switch1
                    text: qsTr("First")
                }

                Slider {
                    Material.theme: Material.Dark
                    Material.accent: Material.Orange
                    id: slider
                    antialiasing: false
                    transformOrigin: Item.Center
                    clip: false
                    Layout.columnSpan: 1
                    padding: 1
                    enabled: true
                    spacing: 0
                    orientation: Qt.Horizontal
                    stepSize: 1
                    to: 100
                    value: 30
                }

                Switch {
                    id: switch2
                    text: qsTr("Second")
                }

                Slider {
                    id: slider1
                    value: 0.5
                }

                Switch {
                    id: switch3
                    text: qsTr("Third")
                }

                Slider {
                    id: slider2
                    value: 0.5
                }
            }
        }

        Item {
            id: item2
            GridLayout {
                x: 138
                y: 155
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: 0
                anchors.verticalCenter: parent.verticalCenter
                columns: 2
                Switch {
                    id: switch4
                    text: qsTr("First")
                    Material.theme: Material.Dark
                    Material.accent: Material.Orange
                    Material.background: Material.BlueGrey
                }

                Slider {
                    id: slider3
                    Material.theme: Material.Dark
                    Material.accent: Material.Orange
                    spacing: 0
                    transformOrigin: Item.Center
                    padding: 1
                    enabled: true
                    orientation: Qt.Horizontal
                    Layout.columnSpan: 1
                    clip: false
                    stepSize: 1
                    to: 100
                    antialiasing: false
                    value: 30
                }

                Switch {
                    id: switch5
                    text: qsTr("Second")
                }

                Slider {
                    id: slider4
                    value: 0.5
                }

                Switch {
                    id: switch6
                    text: qsTr("Third")
                    Layout.fillWidth: true
                }

                Slider {
                    id: slider5
                    value: 0.5
                }
                rows: 3
            }
        }
    }

    TabBar {
        id: tabBar
        x: 0
        y: 440
        width: 240

        TabButton {
            id: tabButton
            x: 0
            y: 0
            text: qsTr("Tab Button")
        }

        TabButton {
            id: tabButton1
            x: 322
            y: 0
            text: qsTr("Tab Button")
        }
    }
}
