import QtQuick
import ".."


Rectangle {


    radius:
        AthenaTheme.radius



    color:
        AthenaTheme.surface



    border.width:
        0



    default property alias content:
        container.data



    Item {


        id:
            container



        anchors.fill:
            parent



        anchors.margins:
            AthenaTheme.spacing

    }


}