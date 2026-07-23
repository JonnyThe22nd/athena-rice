import QtQuick


AthenaCard {


    property int timeout:
        3000


    Timer {


        interval:
            timeout


        running:
            true


        onTriggered:

        {

            visible =
                false

        }

    }

}