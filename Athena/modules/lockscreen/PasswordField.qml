import QtQuick
import QtQuick.Controls
import Athena.Components

TextField {

    id: field

    echoMode: TextInput.Password

    width: 260

    placeholderText: "Password"

    onAccepted: {

        // Backend kommt später
        text = ""
    }
}