import QtQuick
import "../.."


OSD {


    property int brightness:
        50



    Text {


        anchors.centerIn:
            parent



        text:
            "Brightness "
            +
            brightness
            +
            "%"



        color:
            AthenaTheme.text

    }


}