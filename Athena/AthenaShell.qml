import QtQuick
import "modules/launcher"


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