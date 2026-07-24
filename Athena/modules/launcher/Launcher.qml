import QtQuick
import Athena.Components
import Athena


AthenaCard {


    id:
        launcher



    width:
        600



    height:
        500



    anchors.centerIn:
        parent



    radius:
        AthenaTheme.radius



    color:
        AthenaTheme.surface



    visible:
        false



    property string query:
        ""



    SearchField {


        id:
            search



        anchors.top:
            parent.top



        anchors.left:
            parent.left



        anchors.right:
            parent.right



        onSearchChanged:
        {

            launcher.query =
                text

        }

    }



    ApplicationList {


        anchors.top:
            search.bottom



        anchors.left:
            parent.left



        anchors.right:
            parent.right



        anchors.bottom:
            parent.bottom



        filter:
            launcher.query


    }



    function open()
    {

        visible =
            true


        search.focus = true

    }



    function close()
    {

        visible =
            false

    }


}