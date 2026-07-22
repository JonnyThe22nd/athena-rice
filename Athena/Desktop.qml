import QtQuick


Item {


    anchors.fill:
        parent



    Rectangle {

        anchors.fill:
            parent


        color:
            AthenaTheme.background

    }



    Text {


        anchors.centerIn:
            parent



        text:
            AthenaConfig.name



        color:
            AthenaTheme.gold



        font.pixelSize:
            48


    }


}