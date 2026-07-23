import QtQuick

import Athena.Bar
import Athena.Wallpaper
import Athena.Launcher
import Athena.ControlCenter
import Athena.Notifications
import Athena.OSD
import Athena.LockScreen
import Athena.SystemCenter


Item {


anchors.fill: parent


Wallpaper {}


Bar {}


Launcher {
id: launcher
}


ControlCenter {
id: controlCenter
}


NotificationCenter {}


VolumeOSD {}


LockScreen {
id: lockScreen
}


SystemCenter {}

id: systemcenter
}