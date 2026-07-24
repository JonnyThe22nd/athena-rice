pragma Singleton

import QtQuick
import ".."


QtObject {


    property string instance:
        ""


    property string runtime:
        "/tmp"



    property bool connected:
        false



    signal eventReceived(
        string event
    )



    signal connectedChanged()



    function initialize()
    {

        Logger.info(
            "Hyprland IPC initializing"
        )


        connected =
            true


        connectedChanged()

    }



    function send(command)
    {

        if(!connected)
        {

            Logger.warning(
                "Hyprland IPC not connected"
            )

            return

        }



        Logger.info(
            "Hyprland command: "
            +
            command
        )

    }



    function simulateEvent(event)
    {

        eventReceived(
            event
        )

    }


}