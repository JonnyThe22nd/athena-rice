pragma Singleton

import QtQuick
import "../.."

QtObject {

    property url currentWallpaper:
        "file:///usr/share/athena/wallpapers/default.jpg"

    property bool blurEnabled:
        AthenaConfig.blurEnabled

    property real blurRadius: 24

    signal wallpaperChanged(url path)

    function setWallpaper(path)
    {
        currentWallpaper = path
        wallpaperChanged(path)
    }

}