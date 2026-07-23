import QtQuick
import Athena
import Athena.ControlCenter
import Athena.Launcher
import Athena.Notifications
import Athena.OSD
import Athena.LockScreen
import Athena.SystemCenter
import Athena.Integration


Item {


    Component.onCompleted:
    {

        BackendConnector.connectBackend()

    }


}

SystemCenter {

    id:
        systemCenter

}
LockScreen {
    id: lockScreen
}

NotificationCenter {


}



VolumeOSD {


}

ControlCenter {

    id:
        controlCenter

}

Launcher {


    id:
        launcher



}

Item {


    id:
        root



    anchors.fill:
        parent



    Desktop {

        anchors.fill:
            parent

    }



    InputManager {

        anchors.fill:
            parent


    }


}