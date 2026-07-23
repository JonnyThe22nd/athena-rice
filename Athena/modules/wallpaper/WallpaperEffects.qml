import QtQuick

Item {

    anchors.fill: parent

    Rectangle {

        anchors.fill: parent

        visible:
            WallpaperManager.blurEnabled

        color: "#22000000"

    }

}