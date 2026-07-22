pragma Singleton

import QtQuick


QtObject {


    property bool enabled:
        true



    property string connected:
        "Offline"



    property var networks:
    [
        "Home",
        "Office",
        "Mobile"
    ]



    signal changed()



    function connectNetwork(name)
    {

        connected =
            name


        changed()


        ServiceBus.networkChanged(
            name
        )

    }



    function disconnect()
    {

        connected =
            "Offline"


        changed()

    }


}