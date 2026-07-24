pragma Singleton

import QtQuick
import ".."


QtObject {


    property int current:
        1



    property int count:
        5



    signal changed()



    function switchTo(id)
    {

        if(
            id < 1 ||
            id > count
        )
            return



        current =
            id



        ServiceBus.workspaceChanged(
            id
        )



        changed()

    }



    function next()
    {

        switchTo(
            current + 1 > count
            ?
            1
            :
            current + 1
        )

    }



    function previous()
    {

        switchTo(
            current - 1 < 1
            ?
            count
            :
            current - 1
        )

    }


}