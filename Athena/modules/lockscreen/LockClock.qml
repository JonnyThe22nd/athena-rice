import QtQuick
import Athena

Column {

    spacing: 4

    property date now: new Date()

    Timer {
        interval: 1000
        repeat: true
        running: true

        onTriggered: now = new Date()
    }

    Text {

        text: Qt.formatTime(now, "HH:mm")

        color: AthenaTheme.text

        font.pixelSize: 56
    }

    Text {

        text: Qt.formatDate(now, "dddd, dd.MM.yyyy")

        color: AthenaTheme.textMuted

        font.pixelSize: 18
    }
}