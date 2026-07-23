import QtQuick
import Athena.Components
import Athena


AthenaCard {


    width:
        parent.width



    height:
        100



    radius:
        AthenaTheme.radius



    color:
        AthenaTheme.surface



    Column {


        anchors.fill:
            parent



        anchors.margins:
            15



        spacing:
            10



        Text {


            text:
                "Audio"



            color:
                AthenaTheme.gold

        }



        AthenaSlider {


            width:
                parent.width



            from:
                0



            to:
                100



            value:
                AudioService.volume



            onMoved:
            {

                AudioService.setVolume(
                    value
                )

            }

        }



        Text {


            text:
                AudioService.muted

                ?

                "Muted"

                :

                AudioService.volume
                +
                "%"



            color:
                AthenaTheme.text

        }

    }

}