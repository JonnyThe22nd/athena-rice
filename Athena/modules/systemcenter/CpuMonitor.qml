import QtQuick
import Athena


Text {

    property int usage:
        0


    color:
        AthenaTheme.text



    text:

        "CPU   "
        +
        usage
        +
        "%"



    Connections {

        target:
            ServiceBus


        function onSystemCpuChanged(value)
        {

            usage = value

        }

    }

}