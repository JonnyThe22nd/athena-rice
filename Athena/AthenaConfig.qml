pragma Singleton

import QtQuick


QtObject {

    readonly property string name:
        "Athena"


    readonly property string version:
        "1.0"


    property bool animationsEnabled:
        true


    property bool blurEnabled:
        true


    property bool shadowsEnabled:
        true


    property string theme:
        "CeramicRed"


    property string wallpaper:
        "default"



    property int animationSpeed:
        250



    property string terminal:
        "kitty"



    property string fileManager:
        "dolphin"



    property string browser:
        "firefox"



    property string launcherShortcut:
        "SUPER+SPACE"



    property string lockShortcut:
        "SUPER+L"


}