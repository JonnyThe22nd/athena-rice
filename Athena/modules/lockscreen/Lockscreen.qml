import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Athena.Components

Rectangle {

    id: root

    anchors.fill: parent

    visible: false

    color: "#CC000000"

    z: 1000

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