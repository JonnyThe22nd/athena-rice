import QtQuick
import "."

signal launcherRequested()
signal controlCenterRequested()


Keys.onPressed:
{

    if(
        event.key === Qt.Key_Space
        &&
        event.modifiers &
        Qt.MetaModifier
    )
    {

        launcherRequested()

    }

    if(
    event.key === Qt.Key_C
    &&
    event.modifiers & Qt.MetaModifier
    )
    {
        controlCenterRequested()
    }

}

Connections {


    target:
        inputManager



    function onLauncherRequested()
    {

        launcher.open()

    }

}

Item {


    focus:
        true



    Keys.onPressed:
    {

        if(
            event.key === Qt.Key_Space
            &&
            event.modifiers &
            Qt.MetaModifier
        )
        {

            Logger.info(
                "Launcher shortcut"
            )

        }



        if(
            event.key === Qt.Key_L
            &&
            event.modifiers &
            Qt.MetaModifier
        )
        {

            Logger.info(
                "Lock shortcut"
            )

        }

    }


}