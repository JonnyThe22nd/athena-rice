pragma Singleton

import QtQuick


QtObject {


    // UI Meldungen

    signal notification(
        string title,
        string message
    )


    // Hyprland

    signal workspaceChanged(
        int workspace
    )


    signal windowChanged(
        string title
    )


    // Audio

    signal volumeChanged(
        int value
    )


    signal mutedChanged(
        bool muted
    )


    // Netzwerk

    signal networkChanged(
        string network
    )


    signal wifiEnabledChanged(
        bool enabled
    )


    // Bluetooth

    signal bluetoothChanged(
        string device
    )


    signal bluetoothEnabledChanged(
        bool enabled
    )


    // Media

    signal mediaChanged(
        string title,
        string artist,
        bool playing
    )


    // System

    signal systemCpuChanged(
        int value
    )


    signal memoryChanged(
        int value
    )


    signal diskChanged(
        int value
    )


    // Backend Status

    signal backendConnected()


    signal backendDisconnected()



    function notify(
        title,
        message
    )
    {

        notification(
            title,
            message
        )

    }


}