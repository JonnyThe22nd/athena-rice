import QtQuick
import QtQuick.Layouts
import "../../components"


AthenaCard {

    id: root


    width: 520

    height: 700


    radius:
        AthenaTheme.radius


    color:
        AthenaTheme.background


    visible: false



    anchors.centerIn:
        parent



    ColumnLayout {

        anchors.fill:
            parent


        anchors.margins:
            20


        spacing:
            16



        Text {

            text:
                "SYSTEM CENTER"


            color:
                AthenaTheme.gold


            font.pixelSize:
                24

        }



        ResourcePanel {}



        SessionInfo {}



        PowerActions {}

    }



    function open()
    {
        visible = true
    }



    function close()
    {
        visible = false
    }



    function toggle()
    {
        visible = !visible
    }

}