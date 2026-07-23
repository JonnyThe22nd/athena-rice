import QtQuick
import QtQuick.Controls


Row {


    spacing:
        12



    Button {

        text:
            "Lock"


        onClicked:

        {
            Logger.info(
                "Lock requested"
            )
        }

    }



    Button {

        text:
            "Logout"


        onClicked:

        {
            Logger.info(
                "Logout requested"
            )
        }

    }



    Button {

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