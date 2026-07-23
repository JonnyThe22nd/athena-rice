import QtQuick
import Athena.Components
import Athena


AthenaPopup {


    id:
        popup



    width:
        300



    height:
        70



    radius:
        AthenaTheme.radius



    color:
        AthenaTheme.surface



    property string title:
        ""



    property string message:
        ""



    opacity:
        0



    function show()
    {

        opacity =
            1



        timer.start()

    }



    Timer {


        id:
            timer



        interval:
            3000



        onTriggered:
        {

            popup.opacity =
                0

        }

    }


}