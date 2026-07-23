import QtQuick
import QtQuick.Controls

Row {

    spacing: 12

    Button {

        text: "Shutdown"

        onClicked: {

            Logger.info("Shutdown requested")

        }
    }

    Button {

        text: "Restart"

        onClicked: {

            Logger.info("Restart requested")

        }
    }

    Button {

        text: "Suspend"

        onClicked: {

            Logger.info("Suspend requested")

        }
    }
}