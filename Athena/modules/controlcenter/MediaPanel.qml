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


        anchors.centerIn:
            parent



        Text {


            text:
                MediaService.title



            color:
                AthenaTheme.text

        }



        Row {


            spacing:
                20



            AthenaButton {


                text:
                    "▶"



                onClicked:
                {

                    MediaService.play()

                }

            }



            AthenaButton {


                text:
                    "⏸"



                onClicked:
                {

                    MediaService.pause()

                }

            }


        }

    }

}