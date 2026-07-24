pragma Singleton

import QtQuick
import Athena


QtObject {


    property bool enabled:
        true



    property var devices:
    [
        {
            "name":"Headphones",
            "connected":false
        },

        {
            "name":"Mouse",
            "connected":false
        }
    ]



    signal changed()



    function connect(device)
    {

        device.connected =
            true


        ServiceBus.bluetoothChanged(
            device.name
        )


        changed()

    }



    function disconnect(device)
    {

        device.connected =
            false


        changed()

    }


}