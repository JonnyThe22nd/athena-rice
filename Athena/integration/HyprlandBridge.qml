pragma Singleton

import QtQuick
import Athena


QtObject {


    function process(event)
    {


        switch(event.type)
        {


        case "workspace_changed":

            ServiceBus.workspaceChanged(
                Number(event.workspace)
            )

            break



        case "window_changed":

            ServiceBus.windowChanged(
                event.window
            )

            break


        }


    }

}