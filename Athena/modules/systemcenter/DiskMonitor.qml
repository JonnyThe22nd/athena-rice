import QtQuick


Text {


    property int usage:
        0



    color:
        AthenaTheme.text



    text:

        "DISK  "
        +
        usage
        +
        "%"



    Connections {


        target:
            ServiceBus



        function onDiskChanged(value)
        {

            usage = value

        }

    }

}