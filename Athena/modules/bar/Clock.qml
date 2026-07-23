import QtQuick
import Athena


Text {


    id:
        clock



    color:
        AthenaTheme.text



    font.pixelSize:
        14



    property string time:
        ""



    Timer {


        interval:
            1000



        running:
            true



        repeat:
            true



        onTriggered:
        {

            clock.time =
                Qt.formatDateTime(
                    new Date(),
                    "HH:mm:ss"
                )

        }

    }



    text:
        time


}