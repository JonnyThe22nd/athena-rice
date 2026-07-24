import QtQuick
import "../../components"


Row {


    spacing:
        12



    AthenaButton {

        text:
            "Lock"


        onClicked:

        {
            Logger.info(
                "Lock requested"
            )
        }

    }



    AthenaButton {

        text:
            "Logout"


        onClicked:

        {
            Logger.info(
                "Logout requested"
            )
        }

    }



    AthenaButton {

        text:
            "Shutdown"


        onClicked:

        {
            Logger.info(
                "Shutdown requested"
            )
        }

    }

}