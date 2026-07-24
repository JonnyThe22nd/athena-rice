import QtQuick
import QtQuick.Layouts
import "../../components"


AthenaCard {


    id:
        bar



    width:
        parent.width



    height:
        42



    color:
        AthenaTheme.surface



    anchors.top:
        parent.top



    radius:
        AthenaTheme.radius



    Row {


        anchors.fill:
            parent



        anchors.leftMargin:
            AthenaTheme.spacing



        anchors.rightMargin:
            AthenaTheme.spacing



        spacing:
            20



        WorkspaceIndicator {

            width:
                200


        }



        Item {

            Layout.fillWidth:
                true

        }



        SystemStatus {

        }



        Clock {

        }



        Tray {

        }


    }


}