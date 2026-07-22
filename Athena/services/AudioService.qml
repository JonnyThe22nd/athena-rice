pragma Singleton

import QtQuick


QtObject {


    property int volume:
        70



    property bool muted:
        false



    signal changed()



    function setVolume(value)
    {

        volume =
            Math.max(
                0,
                Math.min(
                    100,
                    value
                )
            )



        ServiceBus.updateVolume(
            volume
        )


        changed()

    }



    function increase()
    {

        setVolume(
            volume + 5
        )

    }



    function decrease()
    {

        setVolume(
            volume - 5
        )

    }



    function toggleMute()
    {

        muted =
            !muted


        changed()

    }


}