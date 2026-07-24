import QtQuick
import "../.."


Row {


    spacing:
        12



    Text {


        color:
            AthenaTheme.text



        text:

            "VOL "
            +
            AudioService.volume
            +
            "%"


    }



    Text {


        color:
            AthenaTheme.text



        text:

            NetworkService.connected


    }



    Text {


        color:
            AthenaTheme.text



        text:

            BluetoothService.enabled

            ?

            "BT"

            :

            ""


    }


}