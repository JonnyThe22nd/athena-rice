import QtQuick


Text {


    property int usage:
        0



    color:
        AthenaTheme.text



    text:

        "RAM   "
        +
        usage
        +
        "%"



    Connections {


        target:
            ServiceBus



        function onMemoryChanged(value)
        {

            usage = value

        }

    }


}