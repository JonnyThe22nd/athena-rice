pragma Singleton

import QtQuick


QtObject {


    function info(message)
    {
        console.log(
            "[ATHENA]",
            message
        )
    }



    function warning(message)
    {
        console.warn(
            "[ATHENA WARNING]",
            message
        )
    }



    function error(message)
    {
        console.error(
            "[ATHENA ERROR]",
            message
        )
    }


}