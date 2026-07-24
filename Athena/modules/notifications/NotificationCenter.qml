import QtQuick
import Athena


Item {


    id:
        center



    anchors.fill:
        parent



    property var notifications:
        []



    function push(
        title,
        message
    )
    {

        notifications.unshift(
        {
            "title":title,
            "message":message
        })


        if(
            notifications.length > 5
        )
        {

            notifications.pop()

        }

    }



    Column {


        anchors.right:
            parent.right



        anchors.top:
            parent.top



        anchors.margins:
            20



        spacing:
            10



        Repeater {


            model:
                center.notifications



            delegate:

                NotificationItem {

                    title:
                        modelData.title


                    message:
                        modelData.message

                }


        }


    }



    Connections {


        target:
            ServiceBus



        function onNotification(
            title,
            message
        )
        {

            center.push(
                title,
                message
            )

        }

    }


}