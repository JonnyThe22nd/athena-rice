import QtQuick
import QtQuick.Controls
import "../../components"

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