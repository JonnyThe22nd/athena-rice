pragma Singleton

import QtQuick
import Athena


QtObject {


    property bool connected:
        false



    property string socketPath:

        "/tmp/athena.sock"



    signal commandReceived(
        var data
    )

    function connectBackend()
    {

        /*
            Platzhalter für Quickshell Socket Verbindung.

            Die eigentliche Socket-Implementierung
            wird über Quickshell IPC ersetzt.
        */


        connected =
            true



        ServiceBus.backendConnected()

    }



    function send(
        command,
        data
    )
    {

        if(!connected)
            return



        var packet =
        {

            "command":
                command,


            "data":
                data

        }



        commandReceived(
            packet
        )

    }



    function handle(
        message
    )
    {

        HyprlandBridge.process(
            message
        )

        switch(
            message.type
        )
        {


        case "volume":

            ServiceBus.volumeChanged(
                message.value
            )

            break



        case "cpu":

            ServiceBus.systemCpuChanged(
                message.value
            )

            break



        case "memory":

            ServiceBus.memoryChanged(
                message.value
            )

            break



        case "disk":

            ServiceBus.diskChanged(
                message.value
            )

            break



        case "workspace":

            ServiceBus.workspaceChanged(
                message.value
            )

            break



        case "notification":

            ServiceBus.notification(
                message.title,
                message.message
            )

            break


        }

    }



}