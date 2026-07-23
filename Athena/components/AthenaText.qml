import QtQuick


Text {


    property string role:
        "normal"



    color:

        role === "title"

        ?

        AthenaTheme.gold

        :

        AthenaTheme.text



    font.pixelSize:

        role === "title"

        ?

        22

        :

        14


}