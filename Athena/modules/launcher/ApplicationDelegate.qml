import QtQuick
import Athena.Components


AthenaCard {


    property var app



    color:
        mouse.containsMouse

        ?

        AthenaTheme.surfaceLight

        :

        "transparent"



    radius:
        AthenaTheme.radius



    Text {


        anchors.centerIn:
            parent



        text:
            app.name



        color:
            AthenaTheme.text



        font.pixelSize:
            16


    }



    MouseArea {


        id:
            mouse



        anchors.fill:
            parent



        hoverEnabled:
            true



        onClicked:
        {

            ApplicationService.launch(
                app
            )

        }


    }


}