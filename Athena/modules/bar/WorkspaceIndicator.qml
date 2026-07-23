import QtQuick
import Athena


Row {


    spacing:
        8



    Repeater {


        model:
            WorkspaceService.count



        delegate:
        Rectangle {


            width:
                24


            height:
                24



            radius:
                12



            color:

                index + 1
                ===
                WorkspaceService.current

                ?

                AthenaTheme.accent

                :

                AthenaTheme.surfaceLight



            Text {


                anchors.centerIn:
                    parent



                text:
                    index + 1



                color:
                    AthenaTheme.text


            }



            MouseArea {


                anchors.fill:
                    parent



                onClicked:
                {

                    WorkspaceService.switchTo(
                        index + 1
                    )


                    HyprlandCommand.workspace(
                        index + 1
                    )

                }

            }


        }

    }


}