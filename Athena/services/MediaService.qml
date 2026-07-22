pragma Singleton

import QtQuick


QtObject {


    property string title:
        "Nothing Playing"



    property string artist:
        ""



    property bool playing:
        false



    signal changed()



    function play()
    {

        playing =
            true


        changed()

    }



    function pause()
    {

        playing =
            false


        changed()

    }



    function next()
    {

        title =
            "Next Track"


        changed()

    }



}