import QtQuick
import Athena
import Athena.ControlCenter
import Athena.Launcher
import Athena.Notifications
import Athena.OSD


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