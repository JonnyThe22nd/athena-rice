import QtQuick
import Athena


OSD {


    property int volume:
        AudioService.volume



    Column {


        anchors.centerIn:
            parent



        Text {


            text:
                "Volume"



            color:
                AthenaTheme.gold

        }



        Text {


            text:
                volume
                +
                "%"



            color:
                AthenaTheme.text

        }


    }



    Connections {


        target:
            ServiceBus



        function onVolumeChanged(value)
        {

            volume =
                value


            show()

        }

    }


}