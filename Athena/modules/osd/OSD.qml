import QtQuick
import "../../components"


AthenaPopup {


    id:
        osd



    width:
        300



    height:
        80



    anchors.centerIn:
        parent



    radius:
        AthenaTheme.radius



    color:
        AthenaTheme.surface



    visible:
        false



    function show()
    {

        visible =
            true


        hideTimer.start()

    }



    Timer {


        id:
            hideTimer



        interval:
            2000



        onTriggered:
        {

            osd.visible =
                false

        }


    }


}