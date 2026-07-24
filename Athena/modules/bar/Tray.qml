import QtQuick
import "../.."


Row {


    spacing:
        6



    Text {


        color:
            AthenaTheme.gold



        text:
            "◆"


        MouseArea {


            anchors.fill:
                parent



            onClicked:
            {

                Logger.info(
                    "Tray clicked"
                )

            }

        }


    }


}