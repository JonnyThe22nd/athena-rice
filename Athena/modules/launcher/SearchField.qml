import QtQuick
import Athena.Components
import Athena


AthenaCard {


    height:
        50



    color:
        AthenaTheme.surfaceLight



    property alias text:
        input.text



    signal searchChanged(
        string text
    )



    TextInput {


        id:
            input



        anchors.fill:
            parent



        anchors.margins:
            15



        color:
            AthenaTheme.text



        font.pixelSize:
            18



        onTextChanged:
        {

            searchChanged(
                text
            )

        }



        Keys.onEscapePressed:
        {

            parent.parent.close()

        }


    }


}