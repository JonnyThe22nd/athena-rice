import QtQuick

Item {

    anchors.fill: parent

    Image {

        anchors.fill: parent

        source:
            WallpaperManager.currentWallpaper

        fillMode:
            Image.PreserveAspectCrop

        smooth: true

        cache: true

    }

    WallpaperEffects {

        anchors.fill: parent

    }

}