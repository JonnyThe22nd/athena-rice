pragma Singleton

import QtQuick


QtObject {


    signal workspaceChanged(
        int id
    )


    signal activeWindowChanged(
        string title
    )


    signal windowOpened(
        string title
    )


    signal windowClosed(
        string title
    )



    function parse(event)
    {

        var data =
            event.split(">>")



        switch(
            data[0]
        )
        {


        case "workspace":

            workspaceChanged(
                Number(
                    data[1]
                )
            )

            break



        case "activewindow":

            activeWindowChanged(
                data[1]
            )

            break



        case "openwindow":

            windowOpened(
                data[1]
            )

            break



        case "closewindow":

            windowClosed(
                data[1]
            )

            break


        }

    }


}