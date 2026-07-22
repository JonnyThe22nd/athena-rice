pragma Singleton

import QtQuick


QtObject {


    signal notification(
        string title,
        string message
    )


    signal workspaceChanged(
        int workspace
    )


    signal windowChanged()



    signal volumeChanged(
        int value
    )



    signal networkChanged(
        string network
    )



    signal bluetoothChanged(
        string device
    )



    function sendNotification(
        title,
        message
    )
    {

        notification(
            title,
            message
        )

    }



    function updateWorkspace(
        id
    )
    {

        workspaceChanged(
            id
        )

    }



    function updateVolume(
        value
    )
    {

        volumeChanged(
            value
        )

    }


}