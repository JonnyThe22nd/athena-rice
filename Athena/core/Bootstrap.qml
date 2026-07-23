pragma Singleton

import QtQuick
import Athena


QtObject {


    property bool started:
        false



    signal ready()



    function start()
    {

        if(started)
            return



        started =
            true



        Logger.info(
            "Athena bootstrap complete"
        )



        ready()

    }


}