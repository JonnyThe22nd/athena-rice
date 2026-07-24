import QtQuick

import "modules/bar"
import "modules/wallpaper"
import "modules/launcher"
import "modules/controlcenter"
import "modules/notifications"
import "modules/osd"
import "modules/lockscreen"
import "modules/systemcenter"


Item {


	anchors.fill:
		parent


	Wallpaper {
	}


	Bar {
	}


	Launcher {

		id:
			launcher

	}


	ControlCenter {

		id:
			controlCenter

	}


	NotificationCenter {
	}


	VolumeOSD {
	}


	LockScreen {

		id:
			lockScreen

	}


	SystemCenter {

		id:
			systemcenter

	}

}