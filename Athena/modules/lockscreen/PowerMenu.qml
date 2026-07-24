import QtQuick
import "../../components"

Row {

    spacing: 12

    AthenaButton {

        text: "Shutdown"

        onClicked: {

            Logger.info("Shutdown requested")

        }
    }

    AthenaButton {

        text: "Restart"

        onClicked: {

            Logger.info("Restart requested")

        }
    }

    AthenaButton {

        text: "Suspend"

        onClicked: {

            Logger.info("Suspend requested")

        }
    }
}