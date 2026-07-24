import QtQuick
import Quickshell
import "."


ShellRoot {


    AthenaShell {

        anchors.fill:
            parent

    }



    Component.onCompleted:
    {

        Bootstrap.start()


        Logger.info(
            "Athena started"
        )

    }


}