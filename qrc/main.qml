import QtQuick 2.12
import QtQuick.Window 2.12
import org.kde.mauikit 1.0 as Maui
import org.kde.kirigami 2.7 as Kirigami
import QtQuick.Controls 2.13

Maui.ApplicationWindow {
    id: root

    visible: true
    width: 640
    height: 480
    title: qsTr("Epoka")
    rightIcon.visible: false

    Maui.App.iconName: "clock-large"

    // ClockIcon {}

    headBar.middleContent: Kirigami.ActionToolBar {
        display: root.isWide ? ToolButton.TextBesideIcon : ToolButton.IconOnly
        position: ToolBar.Header
        actions: [
            Kirigami.Action {
                iconName: "clock"
                text: "Stopwatch"
                checkable: true
                checked: swipey.currentIndex == 0
                onTriggered: { swipey.currentIndex = 0 }
            },
            Kirigami.Action {
                iconName: "clock"
                text: "Timer"
                checkable: true
                checked: swipey.currentIndex == 1
                onTriggered: { swipey.currentIndex = 1 }
            },
            Kirigami.Action {
                iconName: "clock"
                text: "World Clocks"
                checkable: true
                checked: swipey.currentIndex == 2
                onTriggered: { swipey.currentIndex = 2 }
            },
            Kirigami.Action {
                iconName: "clock"
                text: "Alarms"
                checkable: true
                checked: swipey.currentIndex == 3
                onTriggered: { swipey.currentIndex = 3 }
            }
        ]
    }
    SwipeView {
        id: swipey
        anchors.fill: parent
        StopwatchView {}
        TimerView {}
        WorldClocksView {}
        AlarmView {}
    }
}
