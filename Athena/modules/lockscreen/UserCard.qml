import QtQuick
import Athena.Components
import Athena

AthenaCard {

    color:
        AthenaTheme.surface


    Column {


        spacing:
            12

        Rectangle {

            width: 96
            height: 96
            radius: 48

            color: AthenaTheme.surface
        }

        Text {

            text: "User"

            color: AthenaTheme.text

            horizontalAlignment: Text.AlignHCenter
        }

    }
}