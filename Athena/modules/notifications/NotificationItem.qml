import QtQuick
import Athena.Components


AthenaPopup {


    width:
        320



    height:
        80



    radius:
        AthenaTheme.radius



    color:
        AthenaTheme.surface



    property string title:
        ""



    property string message:
        ""



    Column {


        anchors.fill:
            parent



        anchors.margins:
            15



        spacing:
            5



        Text {


            text:
                title



            color:
                AthenaTheme.gold



        }



        Text {


            text:
                message



            color:
                AthenaTheme.text



        }

    }


}