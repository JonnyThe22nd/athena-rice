import QtQuick
import Athena.Components
import Athena


AthenaCard {


    id:
        center



    width:
        420



    height:
        700



    radius:
        AthenaTheme.radius



    color:
        AthenaTheme.background



    visible:
        false



    anchors.right:
        parent.right



    anchors.top:
        parent.top



    anchors.margins:
        20



    Column {


        anchors.fill:
            parent



        anchors.margins:
            20



        spacing:
            15



        Text {


            text:
                "CONTROL CENTER"



            color:
                AthenaTheme.gold



            font.pixelSize:
                24

        }



        QuickActions {}



        AudioPanel {}



        NetworkPanel {}



        BluetoothPanel {}



        MediaPanel {}

    }



    function open()
    {

        visible =
            true

    }



    function close()
    {

        visible =
            false

    }



    function toggle()
    {

        visible =
            !visible

    }


}