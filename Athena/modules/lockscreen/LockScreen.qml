import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Athena.Components

Item {

    id: root

    anchors.fill: parent

    visible: false

    z: 1000

    Rectangle {

        anchors.fill: parent

        color: "#CC000000"

    }

    function lock() {
        visible = true
        passwordField.forceActiveFocus()
    }

    function unlock() {
        visible = false
    }

    ColumnLayout {

        anchors.centerIn: parent

        spacing: 24

        LockClock {}

        UserCard {}

        PasswordField {
            id: passwordField
        }

        PowerMenu {}
    }
}