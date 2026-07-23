import QtQuick
import Athena.Components


AthenaCard {


    width:
        parent.width



    height:
        120



    radius:
        AthenaTheme.radius



    color:
        AthenaTheme.surface



    Column {


        anchors.fill:
            parent



        anchors.margins:
            15



        Text {


            text:
                "Bluetooth"



            color:
                AthenaTheme.gold

        }



        Repeater {


            model:
                BluetoothService.devices



            delegate:

                Text {


                    text:
                        modelData.name



                    color:
                        AthenaTheme.text

                }


        }


    }


}