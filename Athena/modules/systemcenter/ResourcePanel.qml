import QtQuick
import QtQuick.Layouts
import Athena.Components
import Athena


AthenaCard {

    Layout.fillWidth:
        true


    height:
        220



    radius:
        AthenaTheme.radius



    color:
        AthenaTheme.surface



    ColumnLayout {

        anchors.fill:
            parent


        anchors.margins:
            15



        spacing:
            10



        CpuMonitor {}

        MemoryMonitor {}

        DiskMonitor {}

    }

}