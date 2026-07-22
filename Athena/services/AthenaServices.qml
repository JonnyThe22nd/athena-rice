pragma Singleton

import QtQuick


QtObject {


    property var applications:
        ApplicationService


    property var windows:
        WindowService


    property var workspaces:
        WorkspaceService


    property var audio:
        AudioService


    property var network:
        NetworkService


    property var bluetooth:
        BluetoothService


    property var media:
        MediaService



    Component.onCompleted:
    {

        Logger.info(
            "Service layer loaded"
        )

    }

}