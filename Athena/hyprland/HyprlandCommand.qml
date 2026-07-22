pragma Singleton

import QtQuick


QtObject {



    function dispatch(command)
    {

        HyprlandIPC.send(
            "dispatch "
            +
            command
        )

    }



    function workspace(id)
    {

        dispatch(
            "workspace "
            +
            id
        )

    }



    function fullscreen()
    {

        dispatch(
            "fullscreen"
        )

    }



    function closeActive()
    {

        dispatch(
            "killactive"
        )

    }



    function toggleFloating()
    {

        dispatch(
            "togglefloating"
        )

    }



}