import QtQuick
import QtQuick.Controls
import Athena


Button {


    id:
        root


    property bool accent:
        false


    background:

        Rectangle {


            radius:
                AthenaTheme.radius



            color:

                accent

                ?

                AthenaTheme.accent

                :

                AthenaTheme.surface

        }


    contentItem:

        Text {


            text:
                root.text



            color:
                AthenaTheme.text



            horizontalAlignment:
                Text.AlignHCenter



            verticalAlignment:
                Text.AlignVCenter

        }

}