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


        anchors.fill:
            parent



        anchors.margins:
            15



        Text {


            text:
                "Network"



            color:
                AthenaTheme.gold

        }



        Text {


            text:
                NetworkService.connected



            color:
                AthenaTheme.text

        }



        Button {


            text:
                "Disconnect"



            onClicked:
            {

                NetworkService.disconnect()

            }

        }

    }


}