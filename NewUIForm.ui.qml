import QtQuick 2.4

Item {
    id: item1
    width: 400
    height: 400
    property alias page1: page1

    Page1 {
        id: page1
        x: 0
        y: 0
        width: parent.width
        height: parent.height
    }
    states: [
        State {
            name: "State1"

            PropertyChanges {
                target: page1
                x: 0
                y: 0
            }
        }
    ]
}
