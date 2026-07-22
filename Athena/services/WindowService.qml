pragma Singleton

import QtQuick


QtObject {


    property var windows:
        []



    property var activeWindow:
        null



    signal changed()



    function add(window)
    {

        windows.push(
            window
        )


        changed()

    }



    function remove(window)
    {

        var index =
            windows.indexOf(
                window
            )


        if(index >= 0)
        {

            windows.splice(
                index,
                1
            )

        }


        changed()

    }



    function focus(window)
    {

        activeWindow =
            window


        changed()

    }


}