import QtQuick


Rectangle {


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



            Button {


                text:
                    "▶"



                onClicked:
                {

                    MediaService.play()

                }

            }



            Button {


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