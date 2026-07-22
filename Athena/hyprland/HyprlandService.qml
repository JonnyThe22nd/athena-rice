pragma Singleton

import QtQuick


QtObject {


    property bool running:
        false



    signal ready()



    function start()
    {

        if(running)
            return



        running =
            true



        HyprlandIPC.initialize()



        Logger.info(
            "Hyprland service ready"
        )



        ready()

    }



    Connections {


        target:
            HyprlandIPC



        function onEventReceived(event)
        {

            HyprlandEventParser.parse(
                event
            )

        }

    }



    Connections {


        target:
            HyprlandEventParser



        function onWorkspaceChanged(id)
        {

            WorkspaceService.switchTo(
                id
            )

        }



        function onWindowOpened(title)
        {

            WindowService.add(
            {
                "title":title
            })

        }



        function onWindowClosed(title)
        {

            Logger.info(
                "Window closed "
                +
                title
            )

        }

    }


}