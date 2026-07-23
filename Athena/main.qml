import QtQuick
import Quickshell
import Athena


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