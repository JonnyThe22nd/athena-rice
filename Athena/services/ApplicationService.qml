pragma Singleton

import QtQuick


QtObject {


    property var applications:
    [
        {
            "name":"Terminal",
            "command":"kitty"
        },

        {
            "name":"Browser",
            "command":"firefox"
        },

        {
            "name":"Files",
            "command":"dolphin"
        }
    ]



    function search(text)
    {

        var result = []



        for(
            var i = 0;
            i < applications.length;
            i++
        )
        {

            var app =
                applications[i]



            if(
                app.name
                .toLowerCase()
                .includes(
                    text.toLowerCase()
                )
            )
            {

                result.push(app)

            }

        }


        return result

    }



    function launch(app)
    {

        Logger.info(
            "Launch: "
            +
            app.command
        )


    }


}